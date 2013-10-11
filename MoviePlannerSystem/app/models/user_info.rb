class UserInfo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :Bank_Details, :location, :name, :phone, :preferted_genre
end
