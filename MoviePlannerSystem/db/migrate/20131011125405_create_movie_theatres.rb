class CreateMovieTheatres < ActiveRecord::Migration
  def change
    create_table :movie_theatres do |t|
      t.references :movie
      t.references :theatre

      t.timestamps
    end
    add_index :movie_theatres, :movie_id
    add_index :movie_theatres, :theatre_id
  end
end
