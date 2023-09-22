class CreateTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :detail
      t.text :content

      t.timestamps
    end
  end
end
