module SessionsHelper

  #渡されたユーザーでログイン
  def log_in(user)
    session[:user_id] = user.id
  end

  #現在ログイン中のユーザー
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  #ユーザーログインture,その他false
  def logged_in?
    !current_user.nil?
  end

  #現在のユーザーをログアウト
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
