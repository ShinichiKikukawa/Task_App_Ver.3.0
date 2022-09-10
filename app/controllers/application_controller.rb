class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end
  
  # 現ログインユーザーであるか
  def correct_user
    redirect_to root_url unless current_user?(@user)
  end

  # 現ログインユーザーが管理者であるか
  def admin_user
    redirect_to root_url unless current_user.admin?
  end
  
  # @userが定義されている上で使用する
  def admin_or_correct
    unless current_user?(@user) || current_user.admin?
      flash[:danger] = "権限がありません。"
      redirect_to root_url
    end  
  end
end
