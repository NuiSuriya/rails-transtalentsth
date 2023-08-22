class AddPinToNewsPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :news_posts, :is_pinned, :boolean, default: false
  end
end
