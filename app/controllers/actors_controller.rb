class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def new_form
  end

  def create_row
    @actor = Actor.new
    @actor.name = params['the_name']
    @actor.dob = params['the_dob']
    @actor.bio = params['the_bio']
    @actor.image_url = params['the_image_url']
    @actor.save

    redirect_to("http://localhost:3000/actors")
  end

  def show
    @actor = Actor.find(params['id'])
  end

  def edit_form
    @actor = Actor.find(params['id'])
  end

  def update_row
    @actor = Actor.find(params['id'])
    @actor.name = params['the_name']
    @actor.dob = params['the_dob']
    @actor.bio = params['the_bio']
    @actor.image_url = params['the_image_url']
    @actor.save

    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    @actor = Actor.find(params['id'])
    @actor.destroy

    redirect_to('http://localhost:3000/actors')
  end


end