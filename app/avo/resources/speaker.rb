class Avo::Resources::Speaker < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :first_name, as: :text, link_to_resource: true
    field :last_name, as: :text
    field :occupation, as: :text
    field :photo, as: :file, is_image: true
  end
end
