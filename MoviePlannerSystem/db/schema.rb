# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131011131930) do

  create_table "movie_theatres", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "theatre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "movie_theatres", ["movie_id"], :name => "index_movie_theatres_on_movie_id"
  add_index "movie_theatres", ["theatre_id"], :name => "index_movie_theatres_on_theatre_id"

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "location"
    t.integer  "booked_status"
    t.string   "language"
    t.string   "link"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "theatres", :force => true do |t|
    t.string   "theatre_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "user_infos", :force => true do |t|
    t.string   "name"
    t.text     "Bank_Details"
    t.string   "phone"
    t.string   "location"
    t.string   "preferted_genre"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "user_infos", ["user_id"], :name => "index_user_infos_on_user_id"

  create_table "user_movie_theatres", :force => true do |t|
    t.integer  "user_movie_id"
    t.integer  "movie_theatre_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "user_movie_theatres", ["movie_theatre_id"], :name => "index_user_movie_theatres_on_movie_theatre_id"
  add_index "user_movie_theatres", ["user_movie_id"], :name => "index_user_movie_theatres_on_user_movie_id"

  create_table "user_movies", :force => true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.integer  "response"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_movies", ["movie_id"], :name => "index_user_movies_on_movie_id"
  add_index "user_movies", ["user_id"], :name => "index_user_movies_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
