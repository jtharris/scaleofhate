class ListController < ApplicationController
  respond_to :json

  def show
    respond_with List.where(name: params[:id]).first || render_404
  end
end
