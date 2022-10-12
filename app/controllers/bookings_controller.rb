class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      flash.notice = "Congrats 🎊 Your reservation is confirmed"
    else
      flash.alert = "Please fill in all the fields"
    end
    redirect_to car_path(@car, anchor: "start_date")
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
