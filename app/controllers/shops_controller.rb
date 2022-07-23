class ShopsController < ApplicationController
  def show
    @shop = Shop.find_by(id: params[:id])
    @review = Review.new
    @reviews = @shop.reviews
  end

  def index
    @shops = Shop.all
  end
end
