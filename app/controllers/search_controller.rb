class SearchController < ApplicationController
  def index
  	@courses = Course.all
  	@subjects = Subject.all
  	if !@sub_result
	  	@sub_result = "testing"
	 end
  end

  def results
  	@courses = Course.all
  	@course_result = params[:s]


  	@subjects = Subject.all
  	@sub_id = @subjects.find(params[:subject_id]).s_id
  	@sub_result = @subjects.find(params[:subject_id]).name

 
  	#redirect_to "/search/results"
  end
end
