class PagesController < ApplicationController
  before_action :set_blog_posts
  def home
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = Event.where(
      start_time: start_date.beginning_of_month..start_date.end_of_month.end_of_day
    )
    @testimonials = Testimonial.all
    @contact_form = ContactForm.new
    @user = current_user
  end

  def about_us
    @contact_form = ContactForm.new
  end

  def contact_us
    @contact_form = ContactForm.new
    data = Geocoder.search('3066-3068 Ekkachai Soi 109');
    latitude = data.first.coordinates[0]
    longtitude = data.first.coordinates[1]
    @marker = {
      lat: latitude,
      lng: longtitude
    }
  end

  private

  def set_blog_posts
    @blog_posts = BlogPost.where(draft: false).order(date: :desc).first(3)
  end
end
