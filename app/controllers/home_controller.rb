class HomeController < ApplicationController
  def home
    @image = Image.new
    @images = Image.all
  end
  def help
    
  end
  def about
    
  end
end
