class DirectMessage < ApplicationRecord
  has_many   :direct_message_stats, dependent: :destroy
  belongs_to :user
  belongs_to :room
end
