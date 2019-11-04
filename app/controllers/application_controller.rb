class ApplicationController < ActionController::Base
    protected
    def authenticate_user
      if session[:user_id]
         # set current user object to @current_user object variable
        @current_user = User.find_by(id: session[:user_id])
        return true	
      else
        redirect_to "/posts/index"
        return false
      end
    end
    
    def save_login_state
      if session[:user_id]
        redirect_to "/sessions/login"
        return false
      else
        return true
      end
    end
end
