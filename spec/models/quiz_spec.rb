require 'rails_helper'

RSpec.describe Quiz, type: :model do
  before do
    @quiz = FactoryBot.build(:quiz)
  end
  describe 'クイズ出題' do
    context '出題できるとき' do
      it '以下の出題できない場合を満たさない場合登録できる' do
        expect(@quiz).to be_valid
      end
    end
    context '出題ができない時' do
      it 'userが紐付いていなければ出題できない' do
        @quiz.user = nil
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("Userを入力してください")
      end
      it 'カテゴリーが空または「---」では登録できない' do # 選択肢にないデータ送信も念のためテストしています
        @quiz.quiz_category_id = ''
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("カテゴリーを入力してください")
        @quiz.quiz_category_id = '0'
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("カテゴリーを選択してください")
      end
      it '難易度が空または「---」では登録できない' do # 選択肢にないデータ送信も念のためテストしています
        @quiz.quiz_level_id = ''
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("難易度を入力してください")
        @quiz.quiz_level_id = '0'
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("難易度を選択してください")
      end
      it 'クイズ名が空では出題できない' do
        @quiz.quiz_name = ''
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("クイズ名を入力してください")
      end
      it '問題文が空では登録できない' do
        @quiz.quiz_text = ''
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("問題文を入力してください")
      end
      it '解答が空では登録できない' do
        @quiz.quiz_answer = ''
        @quiz.valid?
        expect(@quiz.errors.full_messages).to include("解答を入力してください")
      end
    end  
  end
end