class RemoveWriterAndAddUserIdToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :writer, :string
    add_reference :blog_posts, :user, foreign_key: true
  end
end
