class IdeasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @ideas = Idea.all
  end

  def new 
    @idea = Idea.new
  end

# This method actually creates the idea using the values 
  def create
    current_user.ideas.create(idea_params)
    redirect_to root_path
  end

  def show 
    @idea = Idea.find(params[:id])
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    @idea.update_attributes(idea_params)
    redirect_to root_path
  end

  private

# This method sucks in the values from the form 
  def idea_params
    params.require(:idea).permit(:title, :summary, :plot, :characters, :notes)
  end
end
