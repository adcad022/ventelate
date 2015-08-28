class OtherliftsController < ApplicationController
  def index
    @otherlifts = Otherlift.all
  end

  def show
    @otherlift = Otherlift.find(params[:id])
  end

  def new
    @otherlift = Otherlift.new
  end

  def create
    @otherlift = Otherlift.new
    @otherlift.user_id = params[:user_id]
    @otherlift.othervent_id = params[:othervent_id]
    @otherlift.support = params[:support]

    if @otherlift.save
      redirect_to :back, :notice => "THANK YOU for the support."
    else
      render 'new'
    end
  end

  def edit
    @otherlift = Otherlift.find(params[:id])
  end

  def update
    @otherlift = Otherlift.find(params[:id])

    @otherlift.user_id = params[:user_id]
    @otherlift.othervent_id = params[:othervent_id]
    @otherlift.support = params[:support]

    if @otherlift.save
      redirect_to "/otherlifts", :notice => "THANK YOU for the support."
    else
      render 'edit'
    end
  end

  def destroy
    @otherlift = Otherlift.find(params[:id])

    @otherlift.destroy

    redirect_to "/otherlifts", :notice => "Otherlift deleted."
  end
end
