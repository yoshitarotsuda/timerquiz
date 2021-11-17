class HomesController < ApplicationController
  def index
    @quizzes = Quiz.all.order("created_at DESC")
  end
end
