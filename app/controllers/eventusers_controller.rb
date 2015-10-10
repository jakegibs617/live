class EventusersController < ApplicationController
  def create
    @eventuser = current_user.eventusers.build(event_id: params[:event_id])
    if @eventuser.save
      flash[:notice] = "You have joined this event."
      redirect_to event_path(params[:event_id])
    end
  end

  def destroy
    @eventuser = Eventuser.find(params[:id])
    @eventuser.destroy
    flash[:notice] = "Left event."
    redirect_to events_path
  end

  def eventuser_params
    params.require(:eventuser).permit(:user_id, :event_id)
  end
end
