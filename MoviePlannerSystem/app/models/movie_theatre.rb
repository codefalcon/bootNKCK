class MovieTheatre < ActiveRecord::Base
  belongs_to :movie
  belongs_to :theatre
  # attr_accessible :title, :body
end
