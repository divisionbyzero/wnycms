class UsersController < ApplicationController

  def login
    @user_session = UserSession.new(params[:user_session])
    if request.post?
      if @user_session.save
        flash[:notice] = "Login successful!"
        redirect_to root_path
      else
        flash[:notice] = "Login unsuccessful :("
      end
    end
  end

  def logout
    current_user_session.destroy
    flash[:notice] = "Logout successful."
    redirect_to root_path
  end

end
