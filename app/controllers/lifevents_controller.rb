class LifeventsController < ApplicationController
  def index
    @lifevents = Lifevent.all
  end

  def show
    @lifevent = Lifevent.find(params[:id])
  end

  def new
    @lifevent = Lifevent.new
  end

  def create
    @lifevent = Lifevent.new
    @lifevent.life_topic = params[:life_topic]
    @lifevent.urgency = params[:urgency]
    @lifevent.story = params[:story]

    if @lifevent.save
      redirect_to "/lifevents", :notice => "Lifevent created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lifevent = Lifevent.find(params[:id])
  end

  def update
    @lifevent = Lifevent.find(params[:id])

    @lifevent.life_topic = params[:life_topic]
    @lifevent.urgency = params[:urgency]
    @lifevent.story = params[:story]

    if @lifevent.save
      redirect_to "/lifevents", :notice => "Lifevent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lifevent = Lifevent.find(params[:id])

    @lifevent.destroy

    redirect_to "/lifevents", :notice => "Lifevent deleted."
  end
end
