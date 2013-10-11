class CreateUserMovies < ActiveRecord::Migration
  def change
    create_table :user_movies do |t|
      t.references :user
      t.references :movie
      t.integer :response

      t.timestamps
    end
    add_index :user_movies, :user_id
    add_index :user_movies, :movie_id
  end
end
