class FriendshipsController < ApplicationController
  def create
    @user = current_user
    @friendship = @user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added Friend."
      redirect_to user_path(@user)
    else
      flash[:error] = "Already Your Friend"
      redirect_to user_path(@user)
    end
  end

  def destroy
    @user = current_user
    @friendship = @user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Unfolled Friend."
    redirect_to user_path(@user)
  end
end
