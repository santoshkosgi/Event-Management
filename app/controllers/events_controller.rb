class EventsController < ApplicationController

  #many to many relation between users and events


  # filter for checking the role of user
  before_filter :require_organisor, :except => [:show,:index,:register]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def register

    @event = Event.find(params[:id])
    @user  = current_user
    @registration = Registration.new(:event_id => @event.id,:user_id => @user.id)
    if @registration.save
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
