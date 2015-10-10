class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @event = Event.find(params[:event_id])
    @comment = Comment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:accepted] = "Comment added."
      redirect_to event_path(@event)
    else
      flash[:errors] = @comment.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
    @event = Event.find(params[:event_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = 'Comment Updated'
      redirect_to event_path(@comment.event)
    else
      flash[:notice] = @comment.errors.full_messages.join(". ")
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    flash[:notice] = "Comment deleted."
    redirect_to event_path(@comment.event)
  end

  protected

  def comment_params
    params.require(:comment).permit(:rating, :body, :event_id, :user,
                                    :image_url)
  end
end
