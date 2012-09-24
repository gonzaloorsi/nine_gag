class ImagesController < ApplicationController
  def create
    @image = Image.create(params[:image])

    @image.update_attributes(:user_id => current_user.id)
    redirect_to root_path, notice: "Upload successfully."
  end

  def show
    image = Image.find(params[:id])

    render :inline => "<%= image_tag image.picture.url %>",:locals => {:image => image}
  end
  def destroy
    image = Image.find(params[:id])
    image.destroy
    flash[:notice] = "Picture destroyed."
    redirect_to root_url
  end

def upvote

  image = Image.find(params[:image_id])

  likes = image.likes || []
  image.update_attributes(:likes => likes << current_user.id) unless (likes.include?(current_user.id) ||
      image.unlikes.to_a.include?(current_user.id))

  redirect_to root_path, notice: "You like photo!"
end

def downvote

  image = Image.find(params[:image_id])

  unlikes = image.unlikes || []
  image.update_attributes(:unlikes => unlikes << current_user.id) unless (unlikes.include?(current_user.id) ||
      image.likes.to_a.include?(current_user.id))

  redirect_to root_path, notice: "You don't like photo!"
end


end
