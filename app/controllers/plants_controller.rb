class PlantsController < ApplicationController
  def index
    matching_plants = Plant.all

    @list_of_plants = matching_plants.order({ :name => :asc })

    render({ :template => "plants/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_plants = Plant.where({ :id => the_id })

    @the_plant = matching_plants.at(0)

    render({ :template => "plants/show.html.erb" })
  end

  def create
    the_plant = Plant.new
    the_plant.name = params.fetch("query_name")
    the_plant.plant_type = params.fetch("query_plant_type")
    the_plant.sun_exposure = params.fetch("query_sun_exposure")
    the_plant.difficulty = params.fetch("query_difficulty")
    the_plant.description = params.fetch("query_description")
    the_plant.spacing = params.fetch("query_spacing")
    the_plant.video_url = params.fetch("query_video_url")
    the_plant.image_url = params.fetch("query_image_url")
    the_plant.watering = params.fetch("query_watering")
    the_plant.growing = params.fetch("query_growing")
    the_plant.harvest = params.fetch("query_harvest")
    the_plant.feeding = params.fetch("query_feeding")
    the_plant.other_care = params.fetch("query_other_care")
    the_plant.diseases = params.fetch("query_diseases")
    the_plant.pests = params.fetch("query_pests")

    if the_plant.valid?
      the_plant.save
      redirect_to("/plants", { :notice => "Plant created successfully." })
    else
      redirect_to("/plants", { :notice => "Plant failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_plant = Plant.where({ :id => the_id }).at(0)

    the_plant.name = params.fetch("query_name")
    the_plant.plant_type = params.fetch("query_plant_type")
    the_plant.sun_exposure = params.fetch("query_sun_exposure")
    the_plant.difficulty = params.fetch("query_difficulty")
    the_plant.description = params.fetch("query_description")
    the_plant.spacing = params.fetch("query_spacing")
    the_plant.video_url = params.fetch("query_video_url")
    the_plant.image_url = params.fetch("query_image_url")
    the_plant.watering = params.fetch("query_watering")
    the_plant.growing = params.fetch("query_growing")
    the_plant.harvest = params.fetch("query_harvest")
    the_plant.feeding = params.fetch("query_feeding")
    the_plant.other_care = params.fetch("query_other_care")
    the_plant.diseases = params.fetch("query_diseases")
    the_plant.pests = params.fetch("query_pests")

    if the_plant.valid?
      the_plant.save
      redirect_to("/plants/#{the_plant.id}", { :notice => "Plant updated successfully."} )
    else
      redirect_to("/plants/#{the_plant.id}", { :alert => "Plant failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_plant = Plant.where({ :id => the_id }).at(0)

    the_plant.destroy

    redirect_to("/plants", { :notice => "Plant deleted successfully."} )
  end
end
