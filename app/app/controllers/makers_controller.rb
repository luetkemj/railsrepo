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

  def edit
    @maker = Maker.find(params[:id])
  end

  def update
    @maker = Maker.find(params[:id])

    if @maker.update(maker_params)
      redirect_to @maker
    else
      render 'edit'
    end
  end

  def destroy
    @maker = Maker.find(params[:id])
    @maker.destroy

    redirect_to makers_path
  end

  def index
    @makers = Maker.all
  end

  private

  def maker_params
    params.require(:maker).permit(:name, :role, :bio)
  end
end
