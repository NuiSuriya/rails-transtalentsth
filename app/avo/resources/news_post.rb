module Avo
  module Resources
    class NewsPost < Avo::BaseResource
      # self.includes = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }
      self.find_record_method = -> {
        # When using friendly_id, we need to check if the id is a slug or an id.
        # If it's a slug, we need to use the find_by_slug method.
        # If it's an id, we need to use the find method.
        # If the id is an array, we need to use the where method in order to return a collection.
        if id.is_a?(Array)
          id.first.to_i == 0 ? query.where(slug: id) : query.where(id: id)
        else
          id.to_i == 0 ? query.find_by_slug(id) : query.find(id)
        end
      }


      def fields
        field :id, as: :id
        field :draft, as: :boolean, name: 'Draft'
        field :title, as: :text, only_on: %i[show new edit]
        field :slug, as: :text, only_on: %i[new edit], name: 'Page URL', placeholder: 'Create url here'
        field :excerpt, as: :text, only_on: :index, link_to_resource: true
        field :category, as: :belongs_to
        field :photos, as: :files, are_images: true
        field :vdo_url, as: :text, name: 'Embed VDO Link', placeholder: 'LinkedIn, Facebook, YouTube etc.'
        field :content, as: :trix, attachment_key: :trix_attachments

        field :user, as: :belongs_to
        field :min_to_read, as: :number, only_on: %i[show new edit]
        field :date, as: :date
        field :is_pinned, as: :boolean, name: 'Pinned'
        field :tag, as: :has_many
        field :news_post_tag, as: :has_many
      end
    end
  end
end
