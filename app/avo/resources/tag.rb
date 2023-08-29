module Avo
  module Resources
    class Tag < Avo::BaseResource
      self.includes = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        field :name, as: :text, sortable: true, link_to_resource: true


        field :news_post_tag, as: :has_many
        field :news_post, as: :has_many
      end
    end
  end
end
