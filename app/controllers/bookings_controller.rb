class BookingsController < ApplicationController
  before_action :set_booking, only: :show
  before_action :set_astro, only: %i[new create]

  def index
    @bookings = current_user.bookings
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.astro = Astro.find(params[:astro_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to astro_path(@astro)
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_astro
    @astro = Astro.find(params[:astro_id])
  end

  def booking_params
    params[:booking].permit(:captain, :number_of_guests, :start_date, :end_date)
  end
end
