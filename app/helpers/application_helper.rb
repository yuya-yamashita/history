module ApplicationHelper
	def current_user
    @current_user ||= User.find_by(id: session[:login_user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
