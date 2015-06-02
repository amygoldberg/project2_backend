class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
# FIXME: using this to be able to move forward with cross script
  protect_from_forgery with: :exception
end
