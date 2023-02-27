class AstrosController < ApplicationController
  before_action :set_astro, only: %i[show edit create update destroy]

  def index
    @astros = Astro.all
  end

  def show
  end

  def new
    @astro = Astro.new
  end

  def create
    @astro = Astro.new(astro_params)
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
    redirect_to astros_path
  end

  def destroy
    @astro.destroy
    redirect_to astros_path
  end

  private

  def astro_params
    params.require(:astro).permit(:name)
  end

  def set_astro
    @astro = Astro.find(params[:id])
  end
end
