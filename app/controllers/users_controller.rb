class UsersController < ApplicationController

#GET /users - gets all the users
#do not want to keep the index, do not want users to see other users initially?
def index
  @users = User.all
  render json: @users
end

#GET /users/:id
def show
  #find one user by their id
  @user = User.find(params[:id])
  render json: @user
end

#POST /users
def create
  @user = User.new(user_params)
  if @user.save
    render json: @user, status: :created, location: users_url
  else
    render json: @user.errors, status: :unprocessable_entity
  end
end

#PATCH /users/:id
def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    head :no_content
  else
    render json: @user.errors, status: :unprocessable_entity
  end
end

  private

   def user_params
    params.require(:user)
      .permit(:name, :username, :password, :email)
  end

end
