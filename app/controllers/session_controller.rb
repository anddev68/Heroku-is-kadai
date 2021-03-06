class SessionController < ApplicationController
  
  def new
    
    if request.method == "GET"
      # noting to do
    elsif request.method == "POST"
      # redirect_to '/game'
      if params.key?(:name) || params.key?(:pass)
        user = User.find_by_name params[:name]
        if user && user.authenticate(params[:pass])
          # login OK
          # sessionにログイン情報を保存する
          session[:login] = params[:name]
          # ゲーム画面に切り替える
          render '_redirect'
        else
          # login NG
          session[:login] = nil
          @msg = 'ユーザー名またはパスワードが間違っています'
        end
      end

    end

    
  end

  def delete
    session[:login] = nil
  end
end


