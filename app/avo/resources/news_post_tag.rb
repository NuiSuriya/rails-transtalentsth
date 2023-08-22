class Avo::Resources::NewsPostTag < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :tag, as: :belongs_to
    field :news_post, as: :belongs_to
  end
end
