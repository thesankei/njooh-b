class HomeController < ApplicationController
  #load_and_authorize_resource
  before_filter :authenticate_user!, :except => [:about, :careers, :contact]
  
  layout :user_or_admin_layout
  
  def index
  end
  
  def about
  end
  
  def careers
  end
  
  def developer
  end
  
  def contact
  end
end
