class GardensController < ApplicationController
  def index
    matching_gardens = Garden.all

    @list_of_gardens = matching_gardens.order({ :created_at => :desc })

    render({ :template => "gardens/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_gardens = Garden.where({ :id => the_id })

    @the_garden = matching_gardens.at(0)

    render({ :template => "gardens/show.html.erb" })
  end

  def create
    the_garden = Garden.new
    the_garden.user_id = params.fetch("query_user_id")
    the_garden.plant_id = params.fetch("query_plant_id")

    if the_garden.valid?
      the_garden.save
      redirect_to("/gardens", { :notice => "Garden created successfully." })
    else
      redirect_to("/gardens", { :notice => "Garden failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_garden = Garden.where({ :id => the_id }).at(0)

    the_garden.user_id = params.fetch("query_user_id")
    the_garden.plant_id = params.fetch("query_plant_id")

    if the_garden.valid?
      the_garden.save
      redirect_to("/gardens/#{the_garden.id}", { :notice => "Garden updated successfully."} )
    else
      redirect_to("/gardens/#{the_garden.id}", { :alert => "Garden failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_garden = Garden.where({ :id => the_id }).at(0)

    the_garden.destroy

    redirect_to("/gardens", { :notice => "Garden deleted successfully."} )
  end
end
