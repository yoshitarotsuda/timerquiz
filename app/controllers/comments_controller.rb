class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, quiz_id: params[:quiz_id])
  end
end
