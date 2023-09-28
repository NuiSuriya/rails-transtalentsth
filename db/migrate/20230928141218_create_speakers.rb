class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :occupation

      t.timestamps
    end
  end
end
