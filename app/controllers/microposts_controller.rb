class MicropostsController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :destroy]

  def index

  end

  def create
    image = Image.find(params[:image_id])
    @micropost = image.microposts.build(params[:micropost]
                                        .merge(:user_id => current_user.id))

    if @micropost.save
      flash[:notice] = "Comment created!"
      redirect_to root_url
    end
  end

  def destroy
  end
end
