class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show confirm]
  before_action :set_astro, only: %i[new create]

  def index
    @bookings = current_user.bookings
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    # authorize @booking
    # render 'new', locals: { booking: @booking }
  end

  def create
    @booking = Booking.new(booking_params)
    # authorize @booking
    @booking.user = current_user
    @astro = Astro.find(params[:astro_id])
    @booking.astro = @astro
    if @booking.save
      redirect_to astro_path(@astro)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def confirm
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_astro
    @astro = Astro.find(params[:astro_id])
  end

  def booking_params
    params.require(:booking).permit(:entry_date, :exit_date)
  end
end

# CHAT GTP part
