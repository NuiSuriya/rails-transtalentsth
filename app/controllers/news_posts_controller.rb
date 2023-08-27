class NewsPostsController < ApplicationController
  before_action :set_news_post, only: :show
  def index
    @pinned_news_posts = NewsPost.order(date: :desc)
    @news_posts = NewsPost.order(date: :desc).page(params[:page]).per(6)
  end

  def show
    @tags = @news_post.tags
    @contact_form = ContactForm.new
    @video_id = extract_video_id(@news_post.vdo_url) if @news_post.vdo_url.present?
  end

  private

  def extract_video_id(url)
    # Extract the 'v' parameter from the query string
    uri = URI(url)
    query = URI.decode_www_form(uri.query || "")
    video_id = query.to_h["v"]

    # If the 'v' parameter is not present in the query string, try to extract it from the path
    if video_id.blank?
      path_segments = uri.path.split("/")
      video_id = path_segments.last if path_segments.include?("watch") && path_segments.length >= 2
    end

    video_id
  end

  def set_news_post
    @news_post = NewsPost.find(params[:id])
  end

end
