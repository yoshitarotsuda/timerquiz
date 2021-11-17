class HomesController < ApplicationController
  def index
    @randomquiz = Quiz.order("RAND()").limit(1)[0]
  end
end
