class OtherventsController < ApplicationController
  def index
    @othervents = Othervent.all
  end

  def personal
    @othervents = Othervent.all
  end

  def show
    @othervent = Othervent.find(params[:id])
    @otherlift = Otherlift.new
  end

  def new
    @othervent = Othervent.new
  end

  def create
    @othervent = Othervent.new
    @othervent.other_topic = params[:other_topic]
    @othervent.user_id = params[:user_id]
    @othervent.urgency = params[:urgency]
    @othervent.story = params[:story]

    if @othervent.save && @othervent.urgency > 7
      redirect_to "/othervents", :notice => "Othervent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @othervent.save && @othervent.urgency <= 7
      redirect_to "/othervents", :notice => "Othervent created"
    else
      render 'new'
    end
  end

  def edit
    @othervent = Othervent.find(params[:id])
  end

  def update
    @othervent = Othervent.find(params[:id])

    @othervent.user_id = params[:user_id]
    @othervent.other_topic = params[:other_topic]
    @othervent.urgency = params[:urgency]
    @othervent.story = params[:story]

    if @othervent.save && @othervent.urgency > 7
      redirect_to "/othervents", :notice => "othervent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @othervent.save && @othervent.urgency <= 7
      redirect_to "/othervents", :notice => "Othervent created"
    else
      render 'new'
    end
  end

  def destroy
    @othervent = Othervent.find(params[:id])

    @othervent.destroy

    redirect_to "/othervents", :notice => "Othervent deleted."
  end
end
