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
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    def idea_params
      params.require(:idea).permit(:content, :user)
    end 

end
