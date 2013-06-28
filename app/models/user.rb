class User < ActiveRecord::Base
  has_many :lists

  attr_accessible :name
end
