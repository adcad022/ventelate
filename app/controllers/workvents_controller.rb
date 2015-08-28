class WorkventsController < ApplicationController
  def index
    @workvents = Workvent.all
  end

  def show
    @workvent = Workvent.find(params[:id])
    @worklift = Worklift.new
  end

  def personal
    @workvents = Workvent.all
  end

  def new
    @workvent = Workvent.new
  end

  def create
    @workvent = Workvent.new
    @workvent.user_id = params[:user_id]
    @workvent.work_topic = params[:work_topic]
    @workvent.urgency = params[:urgency].to_i
    @workvent.story = params[:story]

    if @workvent.save && @workvent.urgency > 7
      redirect_to "/workvents", :notice => "Workvent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @workvent.save && @workvent.urgency <= 7
      redirect_to "/workvents", :notice => "Workvent created"
    else
      render 'new'
    end
  end

  def edit
    @workvent = Workvent.find(params[:id])
  end

  def update
    @workvent = Workvent.find(params[:id])
    @workvent.user_id = params[:user_id]
    @workvent.work_topic = params[:work_topic]
    @workvent.urgency = params[:urgency]
    @workvent.story = params[:story]

    if @workvent.save && @workvent.urgency > 7
      redirect_to "/workvents", :notice => "Workvent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @workvent.save && @workvent.urgency <= 7
      redirect_to "/workvents", :notice => "Workvent created"
    else
      render 'new'
    end
  end

  def destroy
    @workvent = Workvent.find(params[:id])

    @workvent.destroy

    redirect_to "/workvents", :notice => "Workvent deleted."
  end
end
