class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to quiz_path(params[:quiz_id])
    end
  end

  def destroy 
    comment = Comment.find(params[:id])
    if current_user.id == comment[:user_id]
      comment.destroy
      redirect_to quiz_path(params[:quiz_id])
    end
  end

  private
  def comment_params
    params.permit(:comment).merge(user_id: current_user.id, quiz_id: params[:quiz_id])
  end
end
