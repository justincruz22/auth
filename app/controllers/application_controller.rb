class ApplicationController < ActionController::Base
    # this application controller is automatically there when you create a rails app
    # all other controllers INHERIT from this controller
    # any code that is here, is going to apply to ALL controllers 
    # so, if we want the user info every time, use this one. 

    before_action :current_user

    def current_user
        if session["user id"]
        @current_user = User.find(session["user id"])
        end
    end

end
