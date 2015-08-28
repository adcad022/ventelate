class RelationshipliftsController < ApplicationController
  def index
    @relationshiplifts = Relationshiplift.all
  end

  def show
    @relationshiplift = Relationshiplift.find(params[:id])
  end

  def new
    @relationshiplift = Relationshiplift.new
  end

  def create
    @relationshiplift = Relationshiplift.new
    @relationshiplift.user_id = params[:user_id]
    @relationshiplift.relationshipvent_id = params[:relationshipvent_id]
    @relationshiplift.support = params[:support]

    if @relationshiplift.save
      redirect_to :back, :notice => "THANK YOU for the support."
    else
      render 'new'
    end
  end

  def edit
    @relationshiplift = Relationshiplift.find(params[:id])
  end

  def update
    @relationshiplift = Relationshiplift.find(params[:id])

    @relationshiplift.user_id = params[:user_id]
    @relationshiplift.relationshipvent_id = params[:relationshipvent_id]
    @relationshiplift.support = params[:support]

    if @relationshiplift.save
      redirect_to "/relationshiplifts", :notice => "THANK YOU for the support."
    else
      render 'edit'
    end
  end

  def destroy
    @relationshiplift = Relationshiplift.find(params[:id])

    @relationshiplift.destroy

    redirect_to "/relationshiplifts", :notice => "Relationshiplift deleted."
  end
end
