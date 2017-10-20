class LikesController < ApplicationController
  def index
  end

  def new
  end

  def create
    like = Like.new
    like.user = current_user
    like.idea = Idea.find(params[:idea_id])
    puts like.idea
    puts like.user
    like.save
    return redirect_to brightideas_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
