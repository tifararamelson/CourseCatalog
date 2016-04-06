class SearchController < ApplicationController

  before_action :require_login
  #skip_before_action :verify_authenticity_token

  def index
  	@courses = Course.all
  	@subjects = Subject.all
  end

  def results
    #respond_to :js

  	@courses = Course.all
  	@course_result = params[:s]


  	@subjects = Subject.all
  	@sub_id = @subjects.find(params[:subject_id]).s_id
  	@sub_result = @subjects.find(params[:subject_id]).name

    #@javascript

    #render "results.js.erb"
   #render :js => @courses

    respond_to do |format|
      #format.html { render nothing: true, status: :unauthorized }
      format.js #{ render 'results' }
     # format.html { render(:text => "not implemented") }
      
    end
      #format.html { render 'new'}
     # format.js { render 'results.js.erb'}
      #$.ajax url: "/uploads/refresh_table", format: 'js'

   # end
  end

end
