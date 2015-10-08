class FriendshipsController < ApplicationController
  def create
    @user = current_user
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to user_path(@user)
    else
      flash[:error] = "Already Your Friend"
      redirect_to user_path(@user)
    end
  end

  def destroy
    @user = current_user
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to user_path(@user)
  end
end
