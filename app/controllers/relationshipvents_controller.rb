class RelationshipventsController < ApplicationController
  def index
    @relationshipvents = Relationshipvent.all
  end

  def show
    @relationshipvent = Relationshipvent.find(params[:id])
  end

  def new
    @relationshipvent = Relationshipvent.new
  end

  def create
    @relationshipvent = Relationshipvent.new
    @relationshipvent.relationship_topic = params[:relationship_topic]
    @relationshipvent.urgency = params[:urgency]
    @relationshipvent.story = params[:story]

    if @relationshipvent.save
      redirect_to "/relationshipvents", :notice => "Relationshipvent created successfully."
    else
      render 'new'
    end
  end

  def edit
    @relationshipvent = Relationshipvent.find(params[:id])
  end

  def update
    @relationshipvent = Relationshipvent.find(params[:id])

    @relationshipvent.relationship_topic = params[:relationship_topic]
    @relationshipvent.urgency = params[:urgency]
    @relationshipvent.story = params[:story]

    if @relationshipvent.save
      redirect_to "/relationshipvents", :notice => "Relationshipvent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @relationshipvent = Relationshipvent.find(params[:id])

    @relationshipvent.destroy

    redirect_to "/relationshipvents", :notice => "Relationshipvent deleted."
  end
end
