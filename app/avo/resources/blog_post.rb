class Avo::Resources::BlogPost < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :title, as: :text, only_on: [:show, :new, :edit]
    field :excerpt, as: :text, only_on: :index, link_to_resource: true
    field :category, as: :belongs_to
    field :photo, as: :file, is_image: true
    field :content, as: :trix, attachment_key: :trix_attachments,
          html: {}


    field :writer, as: :text, only_on: [:show, :new, :edit]
    field :min_to_read, as: :number, only_on: [:show, :new, :edit]
    field :date, as: :date
  end
end
