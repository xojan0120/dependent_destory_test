
p User.all
p UserRoom.all
p Room.all
p DirectMessage.all
p DirectMessageStat.all

puts "#"*10
puts "destroy!"
puts "#"*10

User.second.destroy
#UserRoom.first.destroy
#Room.first.destroy
#DirectMessage.first.destroy
#DirectMessageStat.first.destroy

p User.all
p UserRoom.all
p Room.all
p DirectMessage.all
p DirectMessageStat.all
