class HomeController < ApplicationController
  def index
    @image = Image.new
    @images = Image.all
  end
end
