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

    # Find related posts based on shared tags
    related_post_ids = NewsPost.joins(:tags) # join the news_posts table with the tags table through the news_post_tags join table
                               .where(tags: { id: @tags.pluck(:id) }) # the id values extracted from the @tags collection using @tags.pluck(:id).
                               .where.not(id: @news_post) # This ensures that the current post is not included in the list of related posts.
                               .distinct # This is used to ensure that you get distinct (unique) news posts in the results. It removes any duplicates.
                               .pluck(:id) # this extracts the id attribute from the resulting news posts and returns an array of these IDs.
                               .sample(3)
    @related_posts = NewsPost.where(id: related_post_ids)
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
