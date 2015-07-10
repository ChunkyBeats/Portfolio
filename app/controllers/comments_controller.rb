class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @post.comments << @comment
    current_user.comments << @comment
    if @comment.save
      flash[:notice] = "Comment successfully posted!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Must provide a comment"
      redirect_to :back
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
