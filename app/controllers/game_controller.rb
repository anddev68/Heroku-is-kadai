class GameController < ApplicationController

    def index
        
        if session[:login] then
            # login OK
            @user = User.find_by_name session[:login]
            

        else
            # login NG
            redirect_to '/login'
        end

    end


end
