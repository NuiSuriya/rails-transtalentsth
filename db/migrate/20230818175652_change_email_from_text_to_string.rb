class ChangeEmailFromTextToString < ActiveRecord::Migration[7.0]
  def change
    change_column :contact_forms, :email, :string
  end
end
