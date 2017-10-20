class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def people_count(idea)
  	idea = Idea.find(idea)
  	people = idea.users
  	people = people.select(:id).map(&:id).uniq
  	people_count = people.length
  end 

  helper_method :people_count

  def find_person(person)
  	person = User.find(person)
  end
  
  helper_method :find_person

  def total_likes(idea_id)
  	idea = Idea.find(idea_id)
  	likes = idea.likes
  	@total_likes = likes.length
  end
  
  helper_method :total_likes

  def find_idea(idea_id)
  	idea = Idea.find(idea_id)
  end
  
  helper_method :find_idea	


end
 