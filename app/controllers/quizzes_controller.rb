class QuizzesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @quiz = Quiz.new
  end
end
