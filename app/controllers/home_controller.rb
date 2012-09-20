class HomeController < ApplicationController
  def index
    @image = Image.new
    @images = Image.all
  end

  def help
  
  end

  def about
  
  end

  def profile
    
  end

end
