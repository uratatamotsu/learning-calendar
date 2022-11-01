class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new
      if @member.save
        redirect_to root_path
      else
        render :new
      end
  end

  private
  def member_params
    params.require(:member).merge(user_id: current_user.id, room_id: @room.id)
  end
end
