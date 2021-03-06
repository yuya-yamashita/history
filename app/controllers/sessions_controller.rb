class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path, notice: 'ログインに成功しました'
    else
      redirect_to login_path, alert: "ログインに失敗しました"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private
  def log_in(user)
    session[:login_user_id] = user.id
  end

  def log_out
    session.delete(:login_user_id)
    @current_user = nil
  end
end
