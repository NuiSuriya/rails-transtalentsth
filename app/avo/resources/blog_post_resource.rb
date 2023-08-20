class BlogPostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :body, as: :trix
  field :writer, as: :text
  field :min_to_read, as: :number
  field :date, as: :date
  field :category, as: :belongs_to
  # add fields here
end
