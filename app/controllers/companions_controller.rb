class CompanionsController < ApplicationController
  def index
    matching_companions = Companion.all

    @list_of_companions = matching_companions.order({ :created_at => :desc })

    render({ :template => "companions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_companions = Companion.where({ :id => the_id })

    @the_companion = matching_companions.at(0)

    render({ :template => "companions/show.html.erb" })
  end

  def create
    the_companion = Companion.new
    the_companion.plant_id = params.fetch("query_plant_id")
    the_companion.companion_id = params.fetch("query_companion_id")

    if the_companion.valid?
      the_companion.save
      redirect_to("/companions", { :notice => "Companion created successfully." })
    else
      redirect_to("/companions", { :notice => "Companion failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_companion = Companion.where({ :id => the_id }).at(0)

    the_companion.plant_id = params.fetch("query_plant_id")
    the_companion.companion_id = params.fetch("query_companion_id")

    if the_companion.valid?
      the_companion.save
      redirect_to("/companions/#{the_companion.id}", { :notice => "Companion updated successfully."} )
    else
      redirect_to("/companions/#{the_companion.id}", { :alert => "Companion failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_companion = Companion.where({ :id => the_id }).at(0)

    the_companion.destroy

    redirect_to("/companions", { :notice => "Companion deleted successfully."} )
  end
end
