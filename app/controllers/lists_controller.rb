class ListsController < ApplicationController
  respond_to :json

  def index
    # TODO:  Page this!!
    # TODO:  And slim it down???
    respond_with List.all
  end

  def show
    #respond_with({ lists: [List.where(name: params[:id]).first] || render_404 })
    respond_with({ list: List.where(name: params[:id]).first || render_404 })
  end
end
