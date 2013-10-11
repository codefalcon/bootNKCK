class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :name
      t.text :Bank_Details
      t.string :phone
      t.string :location
      t.string :preferted_genre
      t.references :user

      t.timestamps
    end
    add_index :user_infos, :user_id
  end
end
