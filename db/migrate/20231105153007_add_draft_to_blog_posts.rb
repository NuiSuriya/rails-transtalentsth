class AddDraftToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :draft, :boolean, default: true
  end
end
