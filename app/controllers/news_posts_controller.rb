class NewsPostsController < ApplicationController
  before_action :set_news_post, only: :show
  def index
    @news_posts = NewsPost.all
  end

  def show
  end

  private

  def set_news_post
    @news_post = NewsPost.find(params[:id])
  end

end
