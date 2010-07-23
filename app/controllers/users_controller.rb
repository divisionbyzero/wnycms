class UsersController < ApplicationController
  inherit_resources
  
  def login
    @user_session = UserSession.new(params[:user_session])
    if request.post?
      if @user_session.save
        flash[:notice] = "Login successful!"
        redirect_to root_path
      else
        flash[:notice] = "Login unsuccessful :("
        redirect_to login_path
      end
    end
  end

  def logout
    current_user_session.destroy
    flash[:notice] = "Logout successful."
    redirect_to root_path
  end

  def show
    show! do |success, failure|
      @comments = @user.comments.oldest.top(5)
    end
  end
  
end
