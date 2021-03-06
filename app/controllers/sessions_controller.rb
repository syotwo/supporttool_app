class SessionsController < ApplicationController
  def new; end

  def create
    email = params[:session][:email].downcase
    password = params[:session][:password]
    if login(email, password)
      flash[:success] = 'ログインに成功しました。'
      redirect_to root_url
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end

  private

  def login(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      # ログイン成功　 session[:user_id] = @user.id によって、ブラウザには Cookie として、サーバには Session として、ログイン状態が維持されることになります。
      session[:user_id] = @user.id
      true
    else
      # ログイン失敗
      false
    end
  end

  def require_user_logged_in
    redirect_to login_url unless logged_in?
  end
end
