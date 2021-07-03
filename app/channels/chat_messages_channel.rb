class ChatMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_messages_channel"
    ChatMessagesChannel.all_messages(Message.all.limit(25))
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_text(data)
    Message.create(content: data['content'], user_name: data['user_name'], color: data['color'], effect: data['effect'])
    ActionCable.server.broadcast('chat_messages_channel',
      content: data['content'],
      user_name: data['user_name'],
      color: data['color'],
      effect: data['effect']
      )
  end

  def self.all_messages(messages)
    Rails.logger.info "*****#{messages.inspect}"
    ActionCable.server.broadcast('chat_messages_channel', history: messages)
  end
end
