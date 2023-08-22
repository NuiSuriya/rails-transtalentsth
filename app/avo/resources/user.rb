module Avo
  module Resources
    class User < Avo::BaseResource
      self.title = :email
      self.includes = []
      # self.search = {
      #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
      # }

      def fields
        field :id, as: :id
        # field :email, as: :gravatar
        field :email, as: :text
        field :admin, as: :boolean
        field :blog_posts, as: :has_many
      end
    end
  end
end
