class QuizzesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show] # deviceメソッド、ログアウトユーザーの移動先限定

  def index
  end

  def new
    if user_signed_in?
      @quiz = Quiz.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def quiz_params # ストロングパラメーター設置
    params.require(:quiz).permit(:quiz_name, :quiz_category_id, :quiz_level_id, :quiz_text, :quiz_answer, :quiz_sample).merge(user_id: current_user.id)
  end
end
