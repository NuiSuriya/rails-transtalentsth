class AddDraftToNewsPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :news_posts, :draft, :boolean, default: true
  end
end
