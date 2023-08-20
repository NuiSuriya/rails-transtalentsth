class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: :show
  def show
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :writer, :min_to_read, :date, :category_id, photos: [])
  end
end
