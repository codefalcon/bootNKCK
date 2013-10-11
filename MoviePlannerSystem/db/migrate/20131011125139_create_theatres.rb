class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :theatre_name

      t.timestamps
    end
  end
end
