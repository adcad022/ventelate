class LifeliftsController < ApplicationController
  def index
    @lifelifts = Lifelift.all
  end

  def show
    @lifelift = Lifelift.find(params[:id])
  end

  def new
    @lifelift = Lifelift.new
  end

  def create
    @lifelift = Lifelift.new
    @lifelift.user_id = params[:user_id]
    @lifelift.lifevent_id = params[:lifevent_id]
    @lifelift.support = params[:support]

    if @lifelift.save
      redirect_to :back, :notice => "THANK YOU for the support."
    else
      render 'new'
    end
  end

  def edit
    @lifelift = Lifelift.find(params[:id])
  end

  def update
    @lifelift = Lifelift.find(params[:id])

    @lifelift.user_id = params[:user_id]
    @lifelift.lifevent_id = params[:lifevent_id]
    @lifelift.support = params[:support]

    if @lifelift.save
      redirect_to "/lifelifts", :notice => "THANK YOU for the support."
    else
      render 'edit'
    end
  end

  def destroy
    @lifelift = Lifelift.find(params[:id])

    @lifelift.destroy

    redirect_to "/lifelifts", :notice => "Lifelift deleted."
  end
end
