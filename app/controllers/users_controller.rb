class UsersController < ApplicationController
  prepend_view_path(File.join(Rails.root, 'app/views/users/'))
  layout 'application'
  def index
  end

  def billing
  end

  def plan
  end

  def profile
  end

  def support
  end

  def notifications
  end
  

end
