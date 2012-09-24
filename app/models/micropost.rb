class Micropost < ActiveRecord::Base
  attr_accessible :content, :image_id, :user_id
  belongs_to :user
  belongs_to :image
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
