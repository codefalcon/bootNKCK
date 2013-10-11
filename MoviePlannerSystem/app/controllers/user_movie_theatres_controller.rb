class UserMovieTheatresController < ApplicationController
  # GET /user_movie_theatres
  # GET /user_movie_theatres.json
  def index
    @user_movie_theatres = UserMovieTheatre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_movie_theatres }
    end
  end

  # GET /user_movie_theatres/1
  # GET /user_movie_theatres/1.json
  def show
    @user_movie_theatre = UserMovieTheatre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_movie_theatre }
    end
  end

  # GET /user_movie_theatres/new
  # GET /user_movie_theatres/new.json
  def new
    @user_movie_theatre = UserMovieTheatre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_movie_theatre }
    end
  end

  # GET /user_movie_theatres/1/edit
  def edit
    @user_movie_theatre = UserMovieTheatre.find(params[:id])
  end

  # POST /user_movie_theatres
  # POST /user_movie_theatres.json
  def create
    @user_movie_theatre = UserMovieTheatre.new(params[:user_movie_theatre])

    respond_to do |format|
      if @user_movie_theatre.save
        format.html { redirect_to @user_movie_theatre, notice: 'User movie theatre was successfully created.' }
        format.json { render json: @user_movie_theatre, status: :created, location: @user_movie_theatre }
      else
        format.html { render action: "new" }
        format.json { render json: @user_movie_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_movie_theatres/1
  # PUT /user_movie_theatres/1.json
  def update
    @user_movie_theatre = UserMovieTheatre.find(params[:id])

    respond_to do |format|
      if @user_movie_theatre.update_attributes(params[:user_movie_theatre])
        format.html { redirect_to @user_movie_theatre, notice: 'User movie theatre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_movie_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_movie_theatres/1
  # DELETE /user_movie_theatres/1.json
  def destroy
    @user_movie_theatre = UserMovieTheatre.find(params[:id])
    @user_movie_theatre.destroy

    respond_to do |format|
      format.html { redirect_to user_movie_theatres_url }
      format.json { head :no_content }
    end
  end
end
