class HomeController < ApplicationController
  def index
    @image = Image.new
    @images = Image.page(params[:page] || 0).per(5)
    @users = User.all
    @micropost = Micropost.new
    @microposts = Micropost.all
  end

  def help
  
  end

  def about
  
  end

  def profile
    
  end

end
