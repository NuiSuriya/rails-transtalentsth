class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: :show
  def index
    @pinned_blog_posts = BlogPost.where(is_pinned: true)
    @blog_posts = BlogPost.order(date: :desc).page(params[:page]).per(6)
  end

  def show
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end
end
