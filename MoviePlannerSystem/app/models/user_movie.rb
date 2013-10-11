class UserMovie < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  attr_accessible :response
end
