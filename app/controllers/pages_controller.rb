class PagesController < ApplicationController
  def index
    #Brodcast the Messaging
    # BackGround Job Somthing
    ActionCable.server.broadcast "notification_channel", broadcast: "You have visited the welcome page."
  end
end
