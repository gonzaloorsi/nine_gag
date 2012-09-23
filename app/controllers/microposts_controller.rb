class MicropostsController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :destroy]

  def index

  end

  def create
    
  end

  def destroy
  end
end