class UsersController < ApplicationController
  respond_to :json

  def show
    respond_with User.find(params[:id]) || render_404
  end

  def current
    render_404 unless session[:user]
    respond_with User.find(session[:user])
  end
end
