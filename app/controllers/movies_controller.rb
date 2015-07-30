class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params['the_title']
    @movie.year = params['the_year']
    @movie.duration = params['the_duration']
    @movie.description = params['the_description']
    @movie.image_url = params['the_image_url']
    @movie.save

    redirect_to("http://localhost:3000/movies")
  end

  def show
    @movie = Movie.find(params['id'])
  end

  def edit_form
    @movie = Movie.find(params['id'])
  end

  def update_row
    @movie = Movie.find(params['id'])
    @movie.title = params['the_title']
    @movie.year = params['the_year']
    @movie.duration = params['the_duration']
    @movie.description = params['the_description']
    @movie.image_url = params['the_image_url']
    @movie.save

    redirect_to("http://localhost:3000/movies")
  end

  def destroy
    @movie = Movie.find(params['id'])
    @movie.destroy

    redirect_to('http://localhost:3000/movies')
  end

end