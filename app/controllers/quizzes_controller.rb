class QuizzesController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show] # deviceメソッド、ログアウトユーザーの移動先限定

  def index
    @quizzes = Quiz.all.order("created_at DESC")
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

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit # 参考資料としてのメモ書きです editは「編集」であり、編集するモデルを特定し、編集された内容を受け取り、updateアクションに内容を送信します。「更新」ではありません。
    @quiz = Quiz.find(params[:id])
    if current_user.id == @quiz.user_id # authenticate_user!のみの制限で良いかと考えたが、よくよく考えると別のログインユーザーが編集できてしまうので必要でした。
    else # unlessの記述の方が良さそうですが、今後editの実行時に記述が入る可能性を考慮しひとまずifで実装しました。
      redirect_to root_path
    end
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz.id)
    else
      render 'edit'
    end
  end

  private
  def quiz_params # ストロングパラメーター設置
    params.require(:quiz).permit(:quiz_name, :quiz_category_id, :quiz_level_id, :quiz_text, :quiz_answer, :quiz_sample).merge(user_id: current_user.id)
  end
end
