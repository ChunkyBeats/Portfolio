class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params)
    @post.comments << @comment
    current_user.comments << @comment
    respond_to do |format|
      format.html { redirect_to project_path(@project) }
      format.js
    end
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
