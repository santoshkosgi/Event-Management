class EventsController < ApplicationController

  #many to many relation between users and events


  # filter for checking the role of user
  before_filter :require_organisor, :except => [:show,:index,:register]
  skip_before_filter :require_login, :only => [:index,:show]
  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.xls {
        send_data @events.to_xls
        return # prevet Rails to seek for index.xls.erb
      }
    end
  end

  def new
    @event = Event.new
  end

  def register

    @event = Event.find(params[:id])
    @user  = current_user
    @registration = Registration.new(:event_id => @event.id,:user_id => @user.id)
    if @registration.save
      text = "i am attending #{@event.name}"
      $client.add_share(:comment => text)
      puts "success fully"
    else
      puts "not success fully"
      redirect_to :controller => "events",:action => "index"
    end

  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render :action => "new"
    end
  end

  def show
  @event =Event.find(params[:id])
  end

  private

  def require_organisor
    unless is_organisor?
      redirect_to :controller => "events",:action =>"index"
    end
  end

  def is_organisor?
    if current_user.role == 1
      return true
    else
      return false
    end
  end

end
