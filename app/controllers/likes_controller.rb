class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    if @like.save
      redirect_to quiz_path(params[:quiz_id])
    end

  end

  def destroy 
    like = Like.find(params[:id])
    if current_user.id == like[:user_id]
      like.destroy
      redirect_to quiz_path(params[:quiz_id])
    end
  end

  private
  def like_params
    params.permit(:like_id).merge(user_id: current_user.id, quiz_id: params[:quiz_id])
  end
end
