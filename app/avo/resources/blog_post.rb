class Avo::Resources::BlogPost < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text
    field :content, as: :trix
    field :writer, as: :text
    field :min_to_read, as: :number
    field :date, as: :date
    field :category, as: :belongs_to
  end
end
