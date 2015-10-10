class UsersController < ApplicationController
  # def show
  #   @user = current_user
  # end
  #
  # def new
  #   @user = User.new
  # end

  def index
    @admins = User.where(role: "admin")
    @members = User.where(role: "member")
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.role = "admin"
    if @user.save
      flash[:notice] = "User Updated"
    end
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    flash[:notice] = "User deleted."
    redirect_to users_path
  end

  protected

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
