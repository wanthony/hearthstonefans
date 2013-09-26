class Api::CardsController < ApplicationController
  respond_to :json

  def index
    filters = params.dup.keep_if do |key, value|
      Card.filterable_attribute?(key)
    end

    @cards = filters.keys.any? ? Card.where(filters) : Card.all

    respond_with @cards
  end

  def show
    @card = Card.find(params[:id])

    respond_with @card
  end
end
