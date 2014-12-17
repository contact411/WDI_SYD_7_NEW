class PostsController < ApplicationController
  def index
    @posts = Post.all
    # binding.pry
    # @comments = current_post.comments.find(params[:id])
  end
end
