class BlogPostsController < ApplicationController
  def index
	@blog_posts = Blog.order('created_at desc')
  end
end
