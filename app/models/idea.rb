class Idea < ApplicationRecord
    validates :description, :author, presence: true

    def update
        @idea = Idea.find(params[:id])
        if @idea.update(idea_params)
          redirect_to root_path
        else
          redirect_to edit_idea_path(params[:id])
        end
    end
    def create
        @idea = Idea.create(idea_params)
        if @idea.valid?
          # Implement later
        else
          # Implement later
        end
        redirect_to root_path
    end  
end
