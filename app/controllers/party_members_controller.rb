class PartyMembersController < ApplicationController

  before_action :set_draw, only: [:new, :create, :edit, :update]

  def new
    @party_member = Draw.find(params[:draw_id])
    @party_member = PartyMember.new
  end

  def create
    @party_member = PartyMember.new(party_member_params)
    @party_member.draw = @draw

    if @party_member.save
    redirect_to draw_path(@draw)
    else
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      @party_member = PartyMember.find(params[:id])
    end

    def update
      @party_member = PartyMember.find(params[:id])
      @party_member.update(party_member_params)
      redirect_to draw_path(@draw)
    end

    def index
      @party_members = PartyMember.all
    end

      def show
        @draw = Draw.find(params[:id])
      end

      def destroy
        @party_member = PartyMember.find(params[:id])
        @party_member.destroy
        redirect_to draw_path(@party_member.draw), status: :see_other
      end

private

  def set_draw
    @draw = Draw.find(params[:draw_id])
  end

  def party_member_params
    params.require(:party_member).permit(:first_name, :last_name, :email)
  end

end
