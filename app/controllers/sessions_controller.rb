class SessionsController < ApplicationController
  skip_before_action :authorized, except: %i[ index destroy ]

  def index
    format.json { render json: { current_user: current_user }  }
  end

  def new

  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/"
    else
      redirect_to "/login", alert: "Invalid credentials"
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to "/", notice: "User logged out"
  end
end
