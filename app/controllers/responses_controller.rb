class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new
    @response.user_id = params[:user_id]
    @response.vent_id = params[:vent_id]
    @response.topic = params[:topic]
    @response.support = params[:support]

    if @response.save
      redirect_to "/responses", :notice => "Response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])

    @response.user_id = params[:user_id]
    @response.vent_id = params[:vent_id]
    @response.topic = params[:topic]
    @response.support = params[:support]

    if @response.save
      redirect_to "/responses", :notice => "Response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    redirect_to "/responses", :notice => "Response deleted."
  end
end
