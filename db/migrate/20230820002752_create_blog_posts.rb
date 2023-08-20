class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.string :writer
      t.integer :min_to_read
      t.date :date, default: 'CURRENT_DATE'
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
