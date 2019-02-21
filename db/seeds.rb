User.create!([
  {name: "john"}
])
Room.create!([
  {name: "room1"}
])
UserRoom.create!([
  {user_id: 1, room_id: 1}
])
DirectMessage.create!([
  {content: "test1", user_id: 1, room_id: 1}
])
DirectMessageStat.create!([
  {direct_message_id: 1, user_id: 1}
])
