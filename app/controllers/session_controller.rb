class SessionController < ApplicationController
  
  def new
    
    if request.method == "GET"
      #redirect_to '/game'
    elsif request.method == "POST"
      # redirect_to '/game'
      render '_redirect'
    end

    
  end

  def delete
    session[:login] = nil
  end
end
