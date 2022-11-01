class RoomsController < ApplicationController
  def index
    @rooms = Room.order("created_at DESC")
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
      if @room.save
        redirect_to root_path
      else
        render :new
      end
  end

  def show
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
  
end
