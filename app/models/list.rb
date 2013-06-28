class List < ActiveRecord::Base
  has_and_belongs_to_many :songs
  belongs_to :user

  attr_accessible :name, :user_id
end
