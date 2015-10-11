class SearchesController < ApplicationController
  def index
    @search_results_event = Event.search(params[:search])
    @search_results_comment = Comment.search(params[:search])
  end
end
