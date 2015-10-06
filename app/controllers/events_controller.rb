class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @user = current_user
    @comments = @event.votes_order
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @user = current_user
    @event.user = @user

    if @event.save
      flash[:accepted] = "Event Added!"
      redirect_to root_path
    else
      flash[:errors] = @event.errors.full_messages.join(". ")
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :image_url)
  end
end
