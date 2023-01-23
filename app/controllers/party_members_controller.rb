class PartyMembersController < ApplicationController

  before_action :set_draw

  def new
     @draw = Draw.find(params[:draw_id])
     @party_member = PartyMember.new
  end

  def create
    @party_member = PartyMember.new(party_member_params)
    @party_member.draw = @draw
    @party_member.save
    redirect_to  new_draw_party_member_path
  end

    ####see all drawn so far

    def index
      @party_members = PartyMember.all
    end
    ##### see one specific draw

    def show
      @party_members = PartyMember.find(params[:id])
      @party_members = PartyMember.all
    end

  def edit
    @party_member = PartyMember.find(params[:id])
  end

  def update
    @party_member = PartyMember.find(params[:id])
    @party_member.update(party_member_params)
    redirect_to draw_path(@draw)
  end



  def destroy
    @party_member = PartyMember.find(params[:id])
    @party_member.destroy
    redirect_to draw_path(@draw), status: :see_other
  end

private

  def party_member_params
    params.require(:party_member).permit(:first_name, :last_name, :email)
  end

  def set_draw
    @draw = Draw.find(params[:draw_id])
  end
end
