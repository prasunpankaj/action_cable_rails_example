class RoomsController < ApplicationController
  def show
    @room_id = params[:id]
    Rails.logger.info "*******"
    if ActionCable.server.broadcast "room_channel_#{@room_id}", broadcast: "Payment Done"
      Rails.logger.info "***ActionCable Excuted****"
    end
  end
end
