class RelationshipventsController < ApplicationController
  def index
    @relationshipvents = Relationshipvent.all
  end

  def personal
    @relationshipvents = Relationshipvent.all
  end

  def show
    @relationshipvent = Relationshipvent.find(params[:id])
    @relationshiplift = Relationshiplift.new
  end

  def new
    @relationshipvent = Relationshipvent.new
  end

  def create
    @relationshipvent = Relationshipvent.new
    @relationshipvent.relationship_topic = params[:relationship_topic]
    @relationshipvent.user_id = params[:user_id]
    @relationshipvent.urgency = params[:urgency]
    @relationshipvent.story = params[:story]

    if @relationshipvent.save && @relationshipvent.urgency > 7
      redirect_to "/relationshipvents", :notice => "Relationshipvent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @relationshipvent.save && @relationshipvent.urgency <= 7
      redirect_to "/relationshipvents", :notice => "Relationshipvent created"
    else
      render 'new'
    end
  end

  def edit
    @relationshipvent = Relationshipvent.find(params[:id])
  end

  def update
    @relationshipvent = Relationshipvent.find(params[:id])
    @relationshipvent.user_id = params[:user_id]
    @relationshipvent.relationship_topic = params[:relationship_topic]
    @relationshipvent.urgency = params[:urgency]
    @relationshipvent.story = params[:story]

    if @relationshipvent.save && @relationshipvent.urgency > 7
      redirect_to "/relationshipvents", :notice => "relationshipvent created. Consider Seeking Professional Help at <a href= 'https://therapists.psychologytoday.com/rms/'>https://therapists.psychologytoday.com/rms/</a>"
    elsif @relationshipvent.save && @relationshipvent.urgency <= 7
      redirect_to "/relationshipvents", :notice => "Relationshipvent created"
    else
      render 'new'
    end
  end

  def destroy
    @relationshipvent = Relationshipvent.find(params[:id])

    @relationshipvent.destroy

    redirect_to "/relationshipvents", :notice => "Relationshipvent deleted."
  end
end
