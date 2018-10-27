class WelcomeController < ApplicationController
  layout 'sidenav'
  def dashboard          
    @body_class = "with-sidebar show-sidebar"

  end
end
