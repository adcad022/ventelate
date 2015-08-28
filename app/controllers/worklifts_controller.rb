class WorkliftsController < ApplicationController
  def index
    @worklifts = Worklift.all
  end

  def show
    @worklift = Worklift.find(params[:id])
  end

  def new
    @worklift = Worklift.new
  end

  def create
    @worklift = Worklift.new
    @worklift.user_id = params[:user_id]
    @worklift.workvent_id = params[:workvent_id]
    @worklift.support = params[:support]

    if @worklift.save
      redirect_to :back, :notice => "THANK YOU for the support."
    else
      render 'new'
    end
  end

  def edit
    @worklift = Worklift.find(params[:id])
  end

  def update
    @worklift = Worklift.find(params[:id])

    @worklift.user_id = params[:user_id]
    @worklift.workvent_id = params[:workvent_id]
    @worklift.support = params[:support]

    if @worklift.save
      redirect_to "/worklifts", :notice => "THANK YOU for the support."
    else
      render 'edit'
    end
  end

  def destroy
    @worklift = Worklift.find(params[:id])

    @worklift.destroy

    redirect_to "/worklifts", :notice => "Worklift deleted."
  end
end
