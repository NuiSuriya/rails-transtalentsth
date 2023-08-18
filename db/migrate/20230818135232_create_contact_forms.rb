class CreateContactForms < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.text :email
      t.text :message
      t.string :phone_numer
      t.references :message_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
