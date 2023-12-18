class AddEventDetailsToNewsPosts < ActiveRecord::Migration[7.0]
  def change
    columns_to_add = [
      { name: :project, type: :string },
      { name: :language, type: :string },
      { name: :period, type: :string },
      { name: :client, type: :string },
      { name: :area, type: :string },
    ]

    columns_to_add.each do |column|
      add_column :news_posts, column[:name], column[:type]
    end
  end
end
