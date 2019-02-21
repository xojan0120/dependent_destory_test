User.create!([
  {name: "user1"},
  {name: "user2"}
])
Room.create!([
  {name: "room1"}
])
UserRoom.create!([
  {user_id: 1, room_id: 1},
  {user_id: 2, room_id: 1}
])
DirectMessage.create!([
  {content: "user1->user2", user_id: 1, room_id: 1},
  {content: "user2->user1", user_id: 2, room_id: 1}
])
DirectMessageStat.create!([
  {direct_message_id: 1, user_id: 1},
  {direct_message_id: 1, user_id: 2},
  {direct_message_id: 2, user_id: 1},
  {direct_message_id: 2, user_id: 2}
])
