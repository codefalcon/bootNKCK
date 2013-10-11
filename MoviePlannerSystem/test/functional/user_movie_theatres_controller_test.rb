require 'test_helper'

class UserMovieTheatresControllerTest < ActionController::TestCase
  setup do
    @user_movie_theatre = user_movie_theatres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_movie_theatres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_movie_theatre" do
    assert_difference('UserMovieTheatre.count') do
      post :create, user_movie_theatre: {  }
    end

    assert_redirected_to user_movie_theatre_path(assigns(:user_movie_theatre))
  end

  test "should show user_movie_theatre" do
    get :show, id: @user_movie_theatre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_movie_theatre
    assert_response :success
  end

  test "should update user_movie_theatre" do
    put :update, id: @user_movie_theatre, user_movie_theatre: {  }
    assert_redirected_to user_movie_theatre_path(assigns(:user_movie_theatre))
  end

  test "should destroy user_movie_theatre" do
    assert_difference('UserMovieTheatre.count', -1) do
      delete :destroy, id: @user_movie_theatre
    end

    assert_redirected_to user_movie_theatres_path
  end
end
