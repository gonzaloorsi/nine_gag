class ImagesController < ApplicationController
  def create
    @image = Image.create(params[:image])
    redirect_to root_path
  end

  def show
    image = Image.find(params[:id])
    render :inline => "<%= image_tag image.picture.url %>",:locals => {:image => image}
  end

end
