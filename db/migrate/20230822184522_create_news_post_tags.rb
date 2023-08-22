class CreateNewsPostTags < ActiveRecord::Migration[7.0]
  def change
    create_table :news_post_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :news_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
