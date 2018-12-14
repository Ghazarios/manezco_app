class WelcomeController < ApplicationController
 before_action :authenticate_user!

  layout 'sidenav'
  def dashboard          
    @body_class = "with-sidebar show-sidebar"
    @questions = []
  end
end
