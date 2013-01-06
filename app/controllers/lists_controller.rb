class ListsController < ApplicationController
  respond_to :json

  def index
    # TODO:  Page this!!
    # TODO:  And slim it down???
    respond_with List.all
  end

  def show
    respond_with current_list
  end

  def create
    # TODO:  Dry this up some!
    return head :unauthorized unless session[:user]

    list_params = params[:list].merge(owner_id: session[:user])
    respond_with List.create(list_params), status: :created
  end

  def update
    return head :unauthorized unless session[:user]

    list = current_list
    return head :forbidden unless list.owner_id.to_s == session[:user].to_s

    respond_with list.update_attributes params[:list]
  end

  private

  def current_list
    List.find params[:id]
  end
end
