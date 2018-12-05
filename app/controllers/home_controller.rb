class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  layout '_base'
  def index
  end
end
