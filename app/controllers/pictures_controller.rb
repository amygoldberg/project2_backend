class PicturesController < ApplicationController

  before_action :set_user

  #GET /users/:user_id/pictures
  def index
    @pictures = @user.pictures
    render json: @pictures
  end

  #GET /users/:user_id/pictures/:id
  def show
    @picture = @user.pictures.find(params[:id])
    render json: @picture
  end

  #POST /users/:user_id/pictures
  def create
    @picture = @user.pictures.build(picture_params)
    if @picture.save
      render json: @picture, status: :created
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    #debugging, replace with current user
    # @user = User.find(1)
    @user = User.find(params[:user_id])
  end

  def picture_params
    params.permit(:user_id, :image, :comment)
  end

end
