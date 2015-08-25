class VentsController < ApplicationController
  def index
    @vents = Vent.all
  end

  def show
    @vent = Vent.find(params[:id])
  end

  def new
    @vent = Vent.new
  end

  def create
    @vent = Vent.new
    @vent.topic = params[:topic]
    @vent.urgency = params[:urgency]
    @vent.story = params[:story]

    if @vent.save
      redirect_to "/vents", :notice => "Vent created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vent = Vent.find(params[:id])
  end

  def update
    @vent = Vent.find(params[:id])

    @vent.topic = params[:topic]
    @vent.urgency = params[:urgency]
    @vent.story = params[:story]

    if @vent.save
      redirect_to "/vents", :notice => "Vent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vent = Vent.find(params[:id])

    @vent.destroy

    redirect_to "/vents", :notice => "Vent deleted."
  end
end
