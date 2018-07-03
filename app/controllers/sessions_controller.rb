class SessionsController < ApplicationController
  def new
  end

  def create
    user = params[:sessions][:name]

    session[:user_id] = user

    redirect_to root_url

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
