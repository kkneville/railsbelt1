class IdeasController < ApplicationController
  
  def index
    @ideas = Idea.all

  end

  def new
  end

  def create
    idea = Idea.new(idea_params)
    if idea.valid?
      idea.save
      return redirect_to brightideas_path
    end
    flash[:errors] = idea.errors.full_messages    
    return redirect_to :back
  end

  def show
    @idea = Idea.find(params[:idea_id])
    @people = @idea.users.select(:id).map(&:id).uniq
  end

  def edit
  end

  def update
  end

  def delete
    idea = Idea.find(params[:idea_id])
    idea.delete
    return redirect_to brightideas_path
  end

  private
    def idea_params

      params.require(:idea).permit(:content).merge(user: current_user)
    end 

end
