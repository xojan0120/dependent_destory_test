class User < ApplicationRecord
  has_many :direct_messages,      dependent: :destroy
  has_many :direct_message_stats
  has_many :user_rooms,           dependent: :destroy
  has_many :rooms, through: :user_rooms
end
