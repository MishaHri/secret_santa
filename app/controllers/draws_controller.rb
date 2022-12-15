class DrawsController < ApplicationController

  #  before_action :set_draw, only: [:index,:show, :edit, :update, :destroy]
  # import random

  def index
    @draws = Draw.all
  end

  def show
    @draw = Draw.find(params[:id])
  end

  def new
    @draw = Draw.new
  end

  def create
  @draw = Draw.create(draw_params)
  redirect_to draw_path(draws), alert: 'Draw created sucessfully'
  end

  def edit
  end

  def update
    @draw = Draw.find(params[:id])
    @draw.update(draw_params)
    redirect_to draw_path(draw)
  end

  def destroy
    @draw = Draw.find(params[:id])
    @draw.destroy
    redirect_to draws_path, status: :see_other
  end

  def assign
    @party_members = PartyMember.all
    def secret_santa(list)
      list_shuffle = list.shuffle
      i = 0
      while i < list_shuffle.count
        puts ("#{list_shuffle[i]} will be gifting #{list_shuffle[i-1]}.")
      i+= 1
    end
    end
    secret_santa(party_members)
  end


private

  def draw_params
    params.require(:draw).permit(:budget, :date_of_presents_exchange)
  end

  def set_draw
    @draw = Draw.find(params[:id])
  end
end
