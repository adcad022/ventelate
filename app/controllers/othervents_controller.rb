class OtherventsController < ApplicationController
  def index
    @othervents = Othervent.all
  end

  def show
    @othervent = Othervent.find(params[:id])
  end

  def new
    @othervent = Othervent.new
  end

  def create
    @othervent = Othervent.new
    @othervent.other_topic = params[:other_topic]
    @othervent.urgency = params[:urgency]
    @othervent.story = params[:story]

    if @othervent.save
      redirect_to "/othervents", :notice => "Othervent created successfully."
    else
      render 'new'
    end
  end

  def edit
    @othervent = Othervent.find(params[:id])
  end

  def update
    @othervent = Othervent.find(params[:id])

    @othervent.other_topic = params[:other_topic]
    @othervent.urgency = params[:urgency]
    @othervent.story = params[:story]

    if @othervent.save
      redirect_to "/othervents", :notice => "Othervent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @othervent = Othervent.find(params[:id])

    @othervent.destroy

    redirect_to "/othervents", :notice => "Othervent deleted."
  end
end
