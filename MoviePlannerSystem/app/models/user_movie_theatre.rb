class UserMovieTheatre < ActiveRecord::Base
  belongs_to :user_movie
  belongs_to :movie_theatre
  # attr_accessible :title, :body
end
