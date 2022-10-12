class ReviewsController < ApplicationController
  before_action :set_car, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.car = @car
    if @review.save
      redirect_to car_path
    else
      render :new
    end
  end

  private

  def set_reservation
    @car = car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  # def create
  #   @car = car.find(params[:car_id])
  #   @review = @car.reviews.create(review_params)
  #   redirect_to car_path(@car)
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:content, :rating)
  # end
end
