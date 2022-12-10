class DrawsController < ApplicationController

  ####create a new draw

  def new
    @draw = Draw.new # Needed to instantiate the form_with
  end

  def create
    @draw = Draw.new(draw_params)
    @draw.save
    redirect_to draw_path(@draw)
  end

  def edit
    @user = Draw.find(params[:id])
  end

  def update
    @draw = Draw.find(params[:id])
    @draw.update(draw_params)
    redirect_to draw_path(@draw)
  end

   ####see all drawn so far

  def index
    @draws = Draw.all
  end
  ##### see one specific draw

  def show
    # @draw = Draw.find(params[:id])
  end

  def destroy
    @draw =Draw.find(params[:id])
    @draw.destroy
    redirect_to draw_path(@draw), status: :see_other
  end

  private

  def draw_params
    params.require(:draw).permit(:budget, :date_of_presents_exchange)
  end
end
