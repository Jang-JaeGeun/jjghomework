class UsersController < ApplicationController
  
  def new
    @user=User.new
  end

  def index
  end

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "users/new"
  end

  def update
  end

  def destroy
  end
  
  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end

end
