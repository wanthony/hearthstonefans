class Api::CardsController < ApplicationController
  def index
    render json: Card.all.to_json
  end

  def show
    render json: Card.find(params[:id]).to_json
  end
end
