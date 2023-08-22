class Avo::Resources::NewsPost < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
  field :title, as: :text
  field :content, as: :textarea
  field :date, as: :date
  field :min_to_read, as: :number
  field :vdo_url, as: :text
  field :user, as: :belongs_to
  field :category, as: :belongs_to
  end
end
