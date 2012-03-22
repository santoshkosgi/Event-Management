class SearchesController < InheritedResources::Base
  before_filter :require_login, :except => [:index]

  def index
    if(params[:search])
      @events = Event.search(params[:search])
      @users = User.search(params[:search])
    else
      @events = Event.all
      @users = User.all
    end
  end

end
