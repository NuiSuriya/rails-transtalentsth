class Avo::Resources::Event < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text, link_to_resource: true
    field :description, as: :textarea
    field :start_time, as: :date_time
    field :end_time, as: :date_time
    field :location, as: :text
  end
end
