class DrawsController < ApplicationController

   before_action :set_draw, only: [:show, :edit, :update, :destroy]

  def index
    @draws = Draw.all
  end

  def show
   end

  def new
    @draw = Draw.new
  end

  def create
    @draw = Draw.new(draw_params)
    @draw.save
    redirect_to draw_path(draw)
  end

  def edit
  end

  def update
    @draw.update(draw_params)
    redirect_to draw_path(draw)
  end

  def destroy
    @draw.destroy
    redirect_to draw_path, status: :see_other
  end

  private

  def draw_params
    params.require(:draw).permit(:budget, :date_of_presents_exchange)
  end
  def set_draw
    @draw = Draw.find(params[:id])
  end

end
