class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    # redirect_to root_path(anchor: 'contact') unless @contact_form.save
    if @contact_form.save
      # Send email here
      ContactFormMailer.contact_email(@contact_form).deliver_now
      redirect_to root_path(anchor: 'contact'), notice: 'Your message has been sent!'
    else
      render :new
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message, :phone_number, :message_category_id)
  end
end
