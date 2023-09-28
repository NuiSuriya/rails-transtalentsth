class ServicesController < ApplicationController
  def consulting
    @contact_form = ContactForm.new
  end

  def training
    @contact_form = ContactForm.new
  end

  def speakers
    @contact_form = ContactForm.new
    @speakers = Speaker.all
  end
end
