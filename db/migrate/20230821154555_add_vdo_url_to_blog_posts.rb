class AddVdoUrlToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :vdo_url, :string
  end
end
