class UserMoviesController < ApplicationController
  # GET /user_movies
  # GET /user_movies.json
  def index
    @user_movies = UserMovie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_movies }
    end
  end

  # GET /user_movies/1
  # GET /user_movies/1.json
  def show
    @user_movie = UserMovie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_movie }
    end
  end

  # GET /user_movies/new
  # GET /user_movies/new.json
  def new
    @user_movie = UserMovie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_movie }
    end
  end

  # GET /user_movies/1/edit
  def edit
    @user_movie = UserMovie.find(params[:id])
  end

  # POST /user_movies
  # POST /user_movies.json
  def create
    @user_movie = UserMovie.new(params[:user_movie])

    respond_to do |format|
      if @user_movie.save
        format.html { redirect_to @user_movie, notice: 'User movie was successfully created.' }
        format.json { render json: @user_movie, status: :created, location: @user_movie }
      else
        format.html { render action: "new" }
        format.json { render json: @user_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_movies/1
  # PUT /user_movies/1.json
  def update
    @user_movie = UserMovie.find(params[:id])

    respond_to do |format|
      if @user_movie.update_attributes(params[:user_movie])
        format.html { redirect_to @user_movie, notice: 'User movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_movies/1
  # DELETE /user_movies/1.json
  def destroy
    @user_movie = UserMovie.find(params[:id])
    @user_movie.destroy

    respond_to do |format|
      format.html { redirect_to user_movies_url }
      format.json { head :no_content }
    end
  end
end
