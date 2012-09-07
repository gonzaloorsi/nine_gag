class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end