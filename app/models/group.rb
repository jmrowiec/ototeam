class Group < ActiveRecord::Base
  validates :name, presence:true
  belongs_to :creator,
             class_name: User
  has_and_belongs_to_many :friends
end
