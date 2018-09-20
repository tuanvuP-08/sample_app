class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def correct_user
    @user = User.find_by id: params[:id]
    if @user.present?
      redirect_to root_url unless current_user? @user
    else
      render file: "public/404.html", status: :not_found, layout: false
    end
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  private

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "not_login_yet"
    redirect_to login_url
  end
end
