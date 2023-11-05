class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: :show
  def index
    @pinned_blog_posts = BlogPost.where(is_pinned: true)
    @blog_posts = BlogPost.order(date: :desc).page(params[:page]).per(6)
  end

  def show
    @tags = @blog_post.tags
    @contact_form = ContactForm.new


    # Find related posts based on shared tags
    related_post_ids = BlogPost.joins(:tags) # join the news_posts table with the tags table through the news_post_tags join table
                               .where(tags: { id: @tags.pluck(:id) }) # the id values extracted from the @tags collection using @tags.pluck(:id).
                               .where.not(id: @blog_post) # This ensures that the current post is not included in the list of related posts.
                               .distinct # This is used to ensure that you get distinct (unique) news posts in the results. It removes any duplicates.
                               .pluck(:id) # this extracts the id attribute from the resulting news posts and returns an array of these IDs.
                               .sample(3)
    @related_posts = BlogPost.where(id: related_post_ids)
  end

  private

  def set_blog_post
    @blog_post = BlogPost.friendly.find(params[:id])
  end
end
