# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ user_name: 'Red Wars' }, { user_name: 'Red Rings' }])
channels = Channel.create([{ channel_name: 'Red Plus' }, { channel_name: 'Ch Flim' }])
Message.create(user_id: users[0].id, channel_id: channels[0], message_date: DateTime.now, content: "Message 1", user_name: users[0].user_name, color: "red", effect: "fead")
Message.create(user_id: users[1].id, channel_id: channels[1].id, message_date: DateTime.now, content: "Message 2", user_name: users[1].user_name, color: "red", effect: "fead")