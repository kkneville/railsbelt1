class SessionsController < ApplicationController
  def index
  end

  def new
    if current_user
      return redirect_to brightideas_path
    end  
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user
      if user.try(:authenticate, params[:user][:password])
        session[:user_id] = user.id
          return redirect_to brightideas_path
      end 
    else
       flash[:errors] = ['Email and password do not match.']
    end 
    return redirect_to '/login'
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    session.delete(:user_id) if session[:user_id]
    return redirect_to "/login"
  end
end
