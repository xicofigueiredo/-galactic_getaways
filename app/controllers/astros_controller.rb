class AstrosController < ApplicationController
  before_action :set_astro, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    if params[:search].present?
      sql_query = <<~SQL
      astros.name @@ :query
    SQL
      @astros = Astro.where(sql_query, query: "%#{params[:search][:query]}%")
      if @astros.empty?
        @astros = Astro.where(category: params[:search][:query])
      end
    else
      @astros = Astro.all
    end
  end

  def show
    @astro = Astro.find(params[:id])
    @booking = Booking.new
  end

  def new
    @astro = Astro.new
  end

  def create
    @astro = Astro.new(astro_params)
    @astro.user = current_user
    if @astro.save
      redirect_to astro_path(@astro)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @astro.update(astro_params)
    redirect_to astro_path(@astro)
  end

  def destroy
    @astro.destroy
    redirect_to astros_path
  end

  private

  def astro_params
    params.require(:astro).permit(:name, :description, :daily_price, :category)
  end

  def set_astro
    @astro = Astro.find(params[:id])
  end
end
