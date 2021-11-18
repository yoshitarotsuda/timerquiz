class HomesController < ApplicationController
  def index
    @randomquiz = Quiz.order("RAND()").limit(1)[0]
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @randomquiz }
    # end
  end

  def create

  end
end
