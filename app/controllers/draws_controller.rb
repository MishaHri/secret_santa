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

  def assign
    @party_members = PartyMember.all
  end
#   @party_member = Draw.find(params[:draw_id])
#   # @party_member = PartyMember.all
#   # @party_member_making_gifts = @party_member
#   @party_member_receivng_gifts = @party_member

#   @assign = []
#    # select one random element from member_making_gifts
#   @assign_member_making_gifts = @party_member_making_gifts.sample(1)
#   # select one random element from party_member_receivng_gifts
#   @assign_member_receivng_gifts = @party_member_receivng_gifts.sample(1)
#   ## check if the 2 values are different
#   if @assign_member_making_gifts != @assign_member_receivng_gifts?
#     # ignore selection and do it again return  ???
#   @assign
#   ## if the 2 values are different store in a new array
#  ## if the 2 values are different delete from member_making_gifts &party_member_receivng_gifts

#  #list with index the associations

#   @assign.first_name.each_with_index do | element, index|
#     puts  "#{index}. #{element}"

private

  def draw_params
    params.require(:draw).permit(:budget, :date_of_presents_exchange)
  end
  # def set_draw
  #   @draw = Draw.find(params[:id])
  # end

end
