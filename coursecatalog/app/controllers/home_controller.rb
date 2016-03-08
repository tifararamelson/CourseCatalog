class HomeController < ApplicationController
  before_action :require_login

  layout "main"

  def index
  end
end
