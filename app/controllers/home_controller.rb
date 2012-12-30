class HomeController < ApplicationController
  
  # This is how you define an action.
  # It is the same thing as defining a method.
  def index
    # TODO Add code if we need it, otherwise....
    # unnecessary to do so
    render :text => "<h1> No love for the view :-( </h1>"
  end
  
  def show
    render :text => "hello"
  end
  
end
