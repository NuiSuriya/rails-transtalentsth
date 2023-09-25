class PagesController < ApplicationController
  def home
    @blog_posts = BlogPost.order(date: :desc).first(3)
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = Event.where(
      start_time: start_date.beginning_of_month..start_date.end_of_month.end_of_week.end_of_day
    )
    @testimonials = Testimonial.all
    @contact_form = ContactForm.new
    @user = current_user
  end

  def about_us
    @contact_form = ContactForm.new
  end
end
