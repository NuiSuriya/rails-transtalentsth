class ContactFormMailer < ApplicationMailer
  def contact_email(contact_form)
    @contact_form = contact_form
    mail(reply_to: @contact_form.email ,to: "atchara.suriya@gmail.com", subject: "Message from #{@contact_form.name}")
  end
end
