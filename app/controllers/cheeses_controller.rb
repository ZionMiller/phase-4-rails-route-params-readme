class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using ID from the URL
    # send JSON response using cheese object
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    # byebug
  end

end
