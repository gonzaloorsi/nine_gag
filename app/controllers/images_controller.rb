class ImagesController < ApplicationController
  def create
    @image = Image.create(params[:image])
    redirect_to root_path
  end

  def show
    image = Image.find(params[:id])
    render :inline => "<%= image_tag image.picture.url %>",:locals => {:image => image}
  end
  def destroy
    image = Image.find(params[:id])
    image.destroy
    redirect_to root_url
  end

def upvote
  
  image = Image.find(params[:image_id])

  likes = image.likes || []
  image.update_attributes(:likes => likes << current_user.id) unless (likes.include?(current_user.id) ||
      image.unlikes.to_a.include?(current_user.id))
  
  redirect_to root_path
end

def downvote

  image = Image.find(params[:image_id])

  unlikes = image.unlikes || []
  image.update_attributes(:unlikes => unlikes << current_user.id) unless (unlikes.include?(current_user.id) ||
      image.likes.to_a.include?(current_user.id))
  
  redirect_to root_path
end

end
