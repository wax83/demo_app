class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :microposts

  validates :name, :email, 
    :presence => true, :uniqueness => true
end
