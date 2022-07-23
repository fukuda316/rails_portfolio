class ReviewsController < ApplicationController
  def post
    @shop = Shop.find_by(id: params[:id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to shop_path(@review.shop)
  end

  private
    def review_params
      params.require(:review).permit(:shop_id, :body, :next_seat_distance, :measures_staff, :private_room, :disinfection, :mask_customer, :mask_staff)
    end
end
