module Avo
  module Resources
    class Category < Avo::BaseResource
      self.includes = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        field :name, as: :text
        field :blog_posts, as: :has_many, attach_scope: lambda {
                                                          query.where.not(category_id:
          parent.id).or(query.where(category_id: nil))
                                                        }
      end
    end
  end
end
