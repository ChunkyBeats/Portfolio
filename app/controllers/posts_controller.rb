class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def create
    post = current_user.posts.new(post_params)
    if post.save
      flash[:notice] = "You've successfully created a post."
      redirect_to posts_path
    else
      flash[:alert] = "Failed to create post."
      redirect_to :back
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
