class GameController < ApplicationController

    def index

        girls = Dir.glob("public/images/girl/*.jpeg")
        girls.map! {|item| [item, "girl"] }
        shemales = Dir.glob("public/images/shemale/*.jpeg")
        shemales.map! {|item| [item, "shemale"]}

        @subjects = []
        @subjects.concat(girls)
        @subjects.concat(shemales)
        @subjects.shuffle!
        
        if session[:login] then
            # login OK
            @user = User.find_by_name session[:login]
            
        else
            # login NG
            #redirect_to '/login'
        end

    end

    ###
    # for ajax
    ###

    # post /win
    def win
        if session[:login] then
            user = User.find_by_name session[:login]
            user.win = user.win + 1
            user.save
            render :json => {"response": "OK"}
            return
        end
        render :json => {"response": "NG"}
    end

    # post /lose
    def lose
        if session[:login] then
            user = User.find_by_name session[:login]
            user.lose = user.lose + 1
            user.save
            render :json => {"response": "OK"}
            return
        end
        render :json => {"response": "NG"}
    end

    # post /draw
    def draw
    end

end
