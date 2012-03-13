class EventsController < ApplicationController

  #many to many relation between users and events

  # filter for checking the role of user
  before_filter :require_organisor, :except => [:show,:index,:register,:getemail,:create1,:search]
  skip_before_filter :require_login, :only => [:index,:show,:getemail,:create1,:search]
  def index
    if(params[:search])
      @events = Event.search(params[:search])
    else
      @events = Event.paginate(:page => params[:page])
      @search = true
    end
    respond_to do |format|
      format.html
      format.xls {
        send_data @events.to_xls
        return # prevet Rails to seek for index.xls.erb
      }
      format.js
      format.xml {render :xml => @events}
    end
  end

  def new
    @event = Event.new
  end

  def getemail
    @user = User.new
  end

  def create1
    puts "in create1"
    puts params[:user][:email]

    $email = params[:user][:email]
    puts $email
    redirect_to gotemail_path

  end

  def register

    @event = Event.find(params[:id])
    @user  = current_user
    @registration = Registration.new(:event_id => @event.id,:user_id => @user.id)
    @registration.pay
    if @registration.save
      if $omniauth
        text = "i am attending #{@event.name}"
        $client.add_share(:comment => text)
      end
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
      render "new"
    end
  end

  def show
  @event =Event.find(params[:id])
  end

  def search

  end
  def edit

  end

  def update

  end

  def return
    redirect_to root_url
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
