class SearchController < ApplicationController

  def index
  end
  
  def results
    @search_view = params[:search_view]  
    @search_string = params[:search_string]
    
    @expertise = Expertise.find_by_tags(params[:search_string])

    if @expertise.nil?
      redirect_to root_url, notice: "Sorry, nobody has such skillset"
    else 	
      @matched_users = @expertise.users
    end
  end

end
