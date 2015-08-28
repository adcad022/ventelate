class LifeventsController < ApplicationController
  def home
  end

  def personal
    @lifevents = Lifevent.all
  end

  def index
    @lifevents = Lifevent.all
  end

  def show
    @lifevent = Lifevent.find(params[:id])
    @lifelift = Lifelift.new
  end

  def new
    @lifevent = Lifevent.new
  end

  def create
    @lifevent = Lifevent.new

    @lifevent.user_id = params[:user_id]
    @lifevent.life_topic = params[:life_topic]
    @lifevent.urgency = params[:urgency]
    @lifevent.story = params[:story]

    if @lifevent.save && @lifevent.urgency > 7
      redirect_to "/lifevents", :notice => "lifevent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @lifevent.save && @lifevent.urgency <= 7
      redirect_to "/lifevents", :notice => "Lifevent created."
    else
      render 'new'
    end
  end

  def edit
    @lifevent = Lifevent.find(params[:id])
  end

  def update
    @lifevent = Lifevent.find(params[:id])

    @lifevent.user_id = params[:user_id]
    @lifevent.life_topic = params[:life_topic]
    @lifevent.urgency = params[:urgency]
    @lifevent.story = params[:story]

    if @lifevent.save && @lifevent.urgency > 7
      redirect_to "/lifevents", :notice => "Lifevent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @lifevent.save && @lifevent.urgency <= 7
      redirect_to "/lifevents",:notice => "Lifevent created."
    else
      render 'new'
    end
  end

  def destroy
    @lifevent = Lifevent.find(params[:id])

    @lifevent.destroy

    redirect_to "/lifevents", :notice => "Lifevent deleted."
  end
end
