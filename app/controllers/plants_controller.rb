class PlantsController < ApplicationController
  def index
    matching_plants = Plant.all

    @list_of_plants = matching_plants.order({ :created_at => :desc })

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
    the_plant.planting_depth = params.fetch("query_planting_depth")
    the_plant.height = params.fetch("query_height")
    the_plant.spacing = params.fetch("query_spacing")
    the_plant.grow_tip = params.fetch("query_grow_tip")
    the_plant.video_url = params.fetch("query_video_url")
    the_plant.image_url = params.fetch("query_image_url")
    the_plant.maturity = params.fetch("query_maturity")

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
    the_plant.planting_depth = params.fetch("query_planting_depth")
    the_plant.height = params.fetch("query_height")
    the_plant.spacing = params.fetch("query_spacing")
    the_plant.grow_tip = params.fetch("query_grow_tip")
    the_plant.video_url = params.fetch("query_video_url")
    the_plant.image_url = params.fetch("query_image_url")
    the_plant.maturity = params.fetch("query_maturity")

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
