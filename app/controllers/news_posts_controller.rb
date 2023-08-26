class NewsPostsController < ApplicationController
  before_action :set_news_post, only: :show
  def index
    @pinned_news_posts = NewsPost.order(date: :desc)
    @news_posts = NewsPost.order(date: :desc).page(params[:page]).per(6)
  end

  def show
  end

  private

  def set_news_post
    @news_post = NewsPost.find(params[:id])
  end
end
