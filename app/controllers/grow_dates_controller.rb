class GrowDatesController < ApplicationController
  def index
    matching_grow_dates = GrowDate.all

    @list_of_grow_dates = matching_grow_dates.order({ :created_at => :desc })

    render({ :template => "grow_dates/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_grow_dates = GrowDate.where({ :id => the_id })

    @the_grow_date = matching_grow_dates.at(0)

    render({ :template => "grow_dates/show.html.erb" })
  end

  def create
    the_grow_date = GrowDate.new
    the_grow_date.plant_id = params.fetch("query_plant_id")
    the_grow_date.outdoor_only = params.fetch("query_outdoor_only", false)
    the_grow_date.early_indoor = params.fetch("query_early_indoor")
    the_grow_date.late_indoor = params.fetch("query_late_indoor")
    the_grow_date.early_outdoor = params.fetch("query_early_outdoor")
    the_grow_date.late_outdoor = params.fetch("query_late_outdoor")

    if the_grow_date.valid?
      the_grow_date.save
      redirect_to("/grow_dates", { :notice => "Grow date created successfully." })
    else
      redirect_to("/grow_dates", { :notice => "Grow date failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_grow_date = GrowDate.where({ :id => the_id }).at(0)

    the_grow_date.plant_id = params.fetch("query_plant_id")
    the_grow_date.outdoor_only = params.fetch("query_outdoor_only", false)
    the_grow_date.early_indoor = params.fetch("query_early_indoor")
    the_grow_date.late_indoor = params.fetch("query_late_indoor")
    the_grow_date.early_outdoor = params.fetch("query_early_outdoor")
    the_grow_date.late_outdoor = params.fetch("query_late_outdoor")

    if the_grow_date.valid?
      the_grow_date.save
      redirect_to("/grow_dates/#{the_grow_date.id}", { :notice => "Grow date updated successfully."} )
    else
      redirect_to("/grow_dates/#{the_grow_date.id}", { :alert => "Grow date failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_grow_date = GrowDate.where({ :id => the_id }).at(0)

    the_grow_date.destroy

    redirect_to("/grow_dates", { :notice => "Grow date deleted successfully."} )
  end
end
