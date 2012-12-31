class HomeController < ApplicationController
  
  # This is how you define an action.
  # It is the same thing as defining a method.
  def index
  end
  
  def show
    render :text => "hello"
  end
  
end
