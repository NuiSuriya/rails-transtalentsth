class AddSlugToNewsPostsAndBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :slug, :string
    add_index :blog_posts, :slug, unique: true
    add_column :news_posts, :slug, :string
    add_index :news_posts, :slug, unique: true
  end
end
