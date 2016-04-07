class SearchController < ApplicationController

  before_action :require_login

  def index
  	@courses = Course.all
  	@subjects = Subject.all
  end

  def results
  	@courses = Course.all
  	@course_result = params[:s]

  	@subjects = Subject.all
  	@sub_id = @subjects.find(params[:subject_id]).s_id
  	@sub_result = @subjects.find(params[:subject_id]).name


    respond_to do |format|
      format.js
    end
  end

end
