module Avo
  module Resources
    class NewsPost < Avo::BaseResource
      self.includes = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        field :title, as: :text, only_on: %i[show new edit]
        field :excerpt, as: :text, only_on: :index, link_to_resource: true
        field :category, as: :belongs_to
        field :photos, as: :files, are_images: true
        field :vdo_url, as: :text, name: 'Embed VDO Link', placeholder: 'LinkedIn, Facebook, YouTube(720 * 415) etc.'
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
