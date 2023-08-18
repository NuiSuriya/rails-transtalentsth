class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    redirect_to root_path(anchor: 'contact') unless @contact_form.save
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message, :phone_number, :message_category_id)
  end
end
