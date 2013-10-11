class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.integer :booked_status
      t.string :language
      t.string :link

      t.timestamps
    end
  end
end
