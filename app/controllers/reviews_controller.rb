class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.content == ''
      render :new
    else
      @review.save
      redirect_to restaurant_path(@restaurant)
    end
  end

  def show
    @reviews = Review.all
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
