class AddPinToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :is_pinned, :boolean, default: false
  end
end
