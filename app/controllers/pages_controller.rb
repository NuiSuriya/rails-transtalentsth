class PagesController < ApplicationController
  def home
    @blog_posts = BlogPost.order(date: :desc).first(3)
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = Event.where(
      start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week
    )
    @contact_form = ContactForm.new
    @user = current_user
  end
end
