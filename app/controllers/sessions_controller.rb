class SessionsController < ApplicationController

  def new
  end

  def create
    name = params[:name]
    if name && name.length > 0
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end
  
  def destroy
    session.delete(:name)
    redirect_to root_path
  end

end #end of sc class
