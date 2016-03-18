class HomeController < ApplicationController
  before_action :require_login

  def index
	@enrollments = Enrollment.all
	#@user = User.all
	#@user_email = current_user.email
	#@user_email = current_user.email
  end
end
