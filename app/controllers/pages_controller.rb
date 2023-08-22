class PagesController < ApplicationController
  def home
    @contact_form = ContactForm.new
    @user = current_user
  end
end
