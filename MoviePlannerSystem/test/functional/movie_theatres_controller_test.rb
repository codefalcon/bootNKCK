require 'test_helper'

class MovieTheatresControllerTest < ActionController::TestCase
  setup do
    @movie_theatre = movie_theatres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_theatres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_theatre" do
    assert_difference('MovieTheatre.count') do
      post :create, movie_theatre: {  }
    end

    assert_redirected_to movie_theatre_path(assigns(:movie_theatre))
  end

  test "should show movie_theatre" do
    get :show, id: @movie_theatre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_theatre
    assert_response :success
  end

  test "should update movie_theatre" do
    put :update, id: @movie_theatre, movie_theatre: {  }
    assert_redirected_to movie_theatre_path(assigns(:movie_theatre))
  end

  test "should destroy movie_theatre" do
    assert_difference('MovieTheatre.count', -1) do
      delete :destroy, id: @movie_theatre
    end

    assert_redirected_to movie_theatres_path
  end
end
