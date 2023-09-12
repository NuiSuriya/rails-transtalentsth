class ChangePictureUrlToAvatarUrlInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :facebook_picture_url, :string
    add_column :users, :avatar_url, :string
  end
end
