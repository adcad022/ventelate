class WorkventsController < ApplicationController
  def index
    @workvents = Workvent.all
  end

  def show
    @workvent = Workvent.find(params[:id])
  end

  def new
    @workvent = Workvent.new
  end

  def create
    @workvent = Workvent.new
    @workvent.work_topic = params[:work_topic]
    @workvent.urgency = params[:urgency]

    @urgency = ["1","2","3"]
    @urgency.each do|u|
    puts u
    end

    @workvent.story = params[:story]

    if @workvent.save
      redirect_to "/workvents", :notice => "Workvent created successfully."
    else
      render 'new'
    end
  end

  def edit
    @workvent = Workvent.find(params[:id])
  end

  def update
    @workvent = Workvent.find(params[:id])
    @workvent.work_topic = params[:work_topic]
    @workvent.urgency = params[:urgency]
    @workvent.story = params[:story]

    if @workvent.save
      redirect_to "/workvents", :notice => "Workvent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @workvent = Workvent.find(params[:id])

    @workvent.destroy

    redirect_to "/workvents", :notice => "Workvent deleted."
  end
end
