class Movie < ActiveRecord::Base
  attr_accessible :booked_status, :date, :language, :link, :location, :name
end
