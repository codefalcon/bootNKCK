class CreateUserMovieTheatres < ActiveRecord::Migration
  def change
    create_table :user_movie_theatres do |t|
      t.references :user_movie
      t.references :movie_theatre

      t.timestamps
    end
    add_index :user_movie_theatres, :user_movie_id
    add_index :user_movie_theatres, :movie_theatre_id
  end
end
