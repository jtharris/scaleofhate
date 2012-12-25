class SessionsController < ApplicationController
  respond_to :json

  def create
    auth = auth_hash
    user = User.where(provider: auth['provider'],
                      uid: auth['uid'].to_s).first

    # Or create if not in the db
    user ||= User.create_with_omniauth(auth)

    session[:user] = user.id
    redirect_to '/'
  end

  def show
    render_404 unless session[:user]
    respond_with User.find(session[:user])
  end

  def destroy
    reset_session
    head :no_content
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
