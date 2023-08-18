class ChangePhoneNumerToPhoneNumberInContactForm < ActiveRecord::Migration[7.0]
  def change
    rename_column :contact_forms, :phone_numer, :phone_number
  end
end
