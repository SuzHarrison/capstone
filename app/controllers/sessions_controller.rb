class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    # if auth_hash["uid"].nil?

    user = User.find_or_create_from_omniauth(auth_hash)
      if user
        session[:user_id] = user.id
        redirect_to root_path
      else
        flash[:notice] = "sorry #{auth_hash.inspect}"
        redirect_to root_path
      end
    end

    def destroy
      session.delete :user_id
      redirect_to root_path
    end
end
