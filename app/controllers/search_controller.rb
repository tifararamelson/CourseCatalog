class SearchController < ApplicationController
  def index
  	@courses = Course.all
  	@subjects = Subject.all
  end
end
