class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.name = params['the_name']
    @director.dob = params['the_dob']
    @director.bio = params['the_bio']
    @director.image_url = params['the_image_url']
    @director.save

    redirect_to("http://localhost:3000/directors")
  end

  def show
    @director = Director.find(params['id'])
  end

  def edit_form
    @director = Director.find(params['id'])
  end

  def update_row
    @director = Director.find(params['id'])
    @director.name = params['the_name']
    @director.dob = params['the_dob']
    @director.bio = params['the_bio']
    @director.image_url = params['the_image_url']
    @director.save

    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @director = Director.find(params['id'])
    @director.destroy

    redirect_to('http://localhost:3000/directors')
  end

end