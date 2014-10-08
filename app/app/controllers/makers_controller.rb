class MakersController < ApplicationController
  def new
  end

  def create
    @maker = Maker.new(maker_params)

    @maker.save
    redirect_to @maker
  end

  def show
    @maker = Maker.find(params[:id])
  end

  def index
    @makers = Maker.all
  end

  private

  def maker_params
    params.require(:maker).permit(:name, :role, :bio)
  end
end
