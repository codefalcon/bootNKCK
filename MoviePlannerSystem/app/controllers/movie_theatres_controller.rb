class MovieTheatresController < ApplicationController
  # GET /movie_theatres
  # GET /movie_theatres.json
  def index
    @movie_theatres = MovieTheatre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movie_theatres }
    end
  end

  # GET /movie_theatres/1
  # GET /movie_theatres/1.json
  def show
    @movie_theatre = MovieTheatre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie_theatre }
    end
  end

  # GET /movie_theatres/new
  # GET /movie_theatres/new.json
  def new
    @movie_theatre = MovieTheatre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie_theatre }
    end
  end

  # GET /movie_theatres/1/edit
  def edit
    @movie_theatre = MovieTheatre.find(params[:id])
  end

  # POST /movie_theatres
  # POST /movie_theatres.json
  def create
    @movie_theatre = MovieTheatre.new(params[:movie_theatre])

    respond_to do |format|
      if @movie_theatre.save
        format.html { redirect_to @movie_theatre, notice: 'Movie theatre was successfully created.' }
        format.json { render json: @movie_theatre, status: :created, location: @movie_theatre }
      else
        format.html { render action: "new" }
        format.json { render json: @movie_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movie_theatres/1
  # PUT /movie_theatres/1.json
  def update
    @movie_theatre = MovieTheatre.find(params[:id])

    respond_to do |format|
      if @movie_theatre.update_attributes(params[:movie_theatre])
        format.html { redirect_to @movie_theatre, notice: 'Movie theatre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_theatres/1
  # DELETE /movie_theatres/1.json
  def destroy
    @movie_theatre = MovieTheatre.find(params[:id])
    @movie_theatre.destroy

    respond_to do |format|
      format.html { redirect_to movie_theatres_url }
      format.json { head :no_content }
    end
  end
end
