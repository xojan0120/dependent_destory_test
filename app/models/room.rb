class Room < ApplicationRecord
  has_many :user_rooms,      dependent: :destroy
  has_many :users, through: :user_rooms
  has_many :direct_messages, dependent: :destroy
end
