class PicturesController < ApiController

  before_action :set_user

  #GET /users/:user_id/pictures
  def index
    @pictures = current_user.pictures
    render json: @pictures
  end

  #GET /users/:user_id/pictures/:id
  def show
    @picture = current_user.pictures.find(params[:id])
    render json: @picture

  end

  #POST /users/:user_id/pictures
  def create
    @picture = current_user.pictures.build(picture_params)
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
    #    @user = User.find(params[:user_id])
    current_user
  end

  def picture_params
    params.permit(:user_id, :image, :comment)
  end

end
