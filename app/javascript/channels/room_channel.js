import consumer from "./consumer"

document.addEventListener('turbolinks:load', () =>{

const element = document.getElementById('room-id');
const room_id = element.getAttribute("data-room-id");

consumer.subscriptions.create({ channel: "RoomChannel",
  room_id: room_id }, {
  connected() {
    //alert("Connected to room channel....")
    console.log("Connected to room channel " + room_id);
    //window.open("https://www.google.com");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
     console.log("Disconnected to room channel....");
    // Called when the subscription has been terminated by the server
  },

  received(data) {
     //console.log("Received Data room channel....")
     console.log(data);
     window.open("https://www.google.com");
     //alert("Connected to room channel....")
    // Called when there's incoming data on the websocket for this channel
  }
});
})