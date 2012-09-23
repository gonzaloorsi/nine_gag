class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :picture, :likes, :unlikes, :user_id
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :user_id, presence: true
  serialize :likes
  serialize :unlikes
  belongs_to :user
  has_many :microposts, dependent: :destroy

  
end
