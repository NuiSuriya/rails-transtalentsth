class AdminController < ApplicationController
  before_action :authenticate_admin!

  def promote_to_admin
    user = User.find(params[:id])
    user.update(admin: true)
    # redirect_to root_path, notice: "#{user.email} is now an admin."
  end

  def add_admin
    email = params[:email]
    user = User.find_or_initailize_by(email:)

    if user.save
      user.update(admin: true)
      redirect_to root_path, notice: "#{user.email} is now an admin and a user."
    else
      redirect_to root_path, alert: "Unable to create admin with #{email}"
    end
  end
end
