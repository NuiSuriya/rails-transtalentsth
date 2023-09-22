class Avo::Resources::Testimonial < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :photo, as: :file, is_image: true
    field :name, as: :text
    field :detail, as: :text
    field :content, as: :textarea
  end
end
