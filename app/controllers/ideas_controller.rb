class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new 
    @idea = Idea.new
  end

# This method actually creates the idea using the values 
  def create
    Idea.create(idea_params)
    redirect_to root_path
  end

  private

# This method sucks in the values from the form 
  def idea_params
    params.require(:idea).permit(:title, :summary, :plot, :characters, :notes)
  end
end
