class AuthController < ApplicationController

  def login
    credentials = login_params
    user = User.find_by username: credentials[:username]
    if user && user.authenticate(credentials[:password])
      render json: { token: user.token, id: user.id, name: user.username}
    else
      head :bad_request
    end
  end

  def logout
    current_user.logout
    head :no_content
  end

  def register
    if User.create(create_new_params
       .merge(password_confirmation: nil)).valid?
      head :created
    else
      head :bad_request
    end
  end

  private

  def login_params
    params.require(:credentials).permit(:username, :password)
  end

  def create_new_params
    params.require(:credentials).permit(:name, :username, :password, :email)
  end

end
