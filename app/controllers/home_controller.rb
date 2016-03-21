class HomeController < ApplicationController
  before_action :require_login

  def index
	@enrollments = Enrollment.all

	@course_enrolled = params[:course]

	if @course_enrolled
		#need to add new course to enrollments
		Enrollment.create(course_id: params[:id], user_id: current_user.id)
		@enrollments = Enrollment.all
	end

  end
end
