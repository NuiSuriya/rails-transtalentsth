class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
  end
end
