class UsersController < ApplicationController
  respond_to :json

  def show
    respond_with User.find(params[:id]) || render_404
  end

end
