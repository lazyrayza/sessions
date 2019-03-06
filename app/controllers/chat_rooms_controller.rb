class ChatRoomsController < ApplicationController
  def show
    @chatrooms = ChatRoom.includes(messages: :user).find(params[:id])
    unless current_user == @chatrooms.booking.therapist || current_user == @chatrooms.booking.client
      redirect_to root_path
      flash[:alert] = "fuck off"
    end
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom = ChatRoom.new
    @chatroom.booking = @booking
    # @chatroom = ChatRoom.create(booking_id: @booking)
    if @chatroom.save
      redirect_to chat_room_path(@chatroom)
    else
      redirect_to booking_path(@booking)
    end
  end

end
