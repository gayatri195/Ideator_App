class IdeasController < ApplicationController
def index
    @ideas = Idea.all
end
def create
    @idea = Idea.create(idea_params)
    redirect_to root_path
    # @idea = Idea.create(description: params[:idea][:description], author: params[:idea][:author])
end
def idea_params
    params.require(:idea).permit(:description, :author)
  end
private

def idea_params
  params.require(:idea).permit(:description, :author)
end
end
