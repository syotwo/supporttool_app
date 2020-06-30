module SessionsHelper
    def current_user
        #@current_userに代入　Userモデルの中のidがsessionに入ったuser_idと合致するデータ
        @current_user ||= User.find_by(id: session[:user_id])
      end
    
    def logged_in?
        !!current_user
    end
end
