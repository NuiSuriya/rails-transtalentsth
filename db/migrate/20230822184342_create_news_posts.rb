class CreateNewsPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :news_posts do |t|
      t.string :title
      t.text :content
      t.date :date
      t.integer :min_to_read
      t.string :vdo_url
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
