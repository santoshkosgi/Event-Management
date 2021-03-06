class EventsController < ApplicationController

  #many to many relation between users and events

  # filter for checking the role of user
  before_filter :require_login, :except => [:index]
  before_filter :require_organisor, :except => [:show,:index,:register,:getemail,:create1,:search,:attend,:connection]
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
    @registration = Registration.new(:event_id => @event.id,:user_id => @user.id,:amount => 300)
    @registration.pay #paypal
    if @registration.save
      if current_user.authorizations.nil?

      else
        text = "i am attending #{@event.name}"
        client = LinkedIn::Client.new('sup72rpsh43n', 'wYzneYSh0nOMHnHv')
        client.authorize_from_access(current_user.authorizations[0].token,current_user.authorizations[0].secret)
        client.add_share(:comment => text)
      end

      puts "success fully"
    else
      puts "not success fully"
      redirect_to :controller => "events",:action => "index"
    end
  end

  def attend
    @event=Event.find(params[:event_id])
    @user  = current_user
    @valid=params[:valid]
    @num=params[:num]
    if @valid == "notvalid"
    @amount = 300*@num.to_f
    else
    @coupon = Coupon.find_by_code(@valid)
    @amount = 300*@num.to_f
    @discount = @amount*@coupon.discount/100
    @amount = @amount-@discount
    @coupon.update_attributes(:status=>false)
    end
    @registration = Registration.new(:event_id => @event.id,:user_id => @user.id,:amount=>@amount)
    if @registration.save
      if current_user.authorizations.nil?

      else
        text = "i am attending #{@event.name}"
        client = LinkedIn::Client.new('sup72rpsh43n', 'wYzneYSh0nOMHnHv')
        client.authorize_from_access(current_user.authorizations[0].token,current_user.authorizations[0].secret)
        client.add_share(:comment => text)
      end
      puts "success fully"
    else
      puts "not success fully"
      redirect_to :controller => "events",:action => "index"
    end
  end

  def attendees
    @event =Event.find(params[:id])
    @users = @event.users
    respond_to do |format|
      format.html
      format.xls {
        send_data @events.to_xls
        return # prevet Rails to seek for index.xls.erb
      }
      end
  end

  def connection # for accessing linkedin connections
    @event =Event.find(params[:event_id])
    puts "in connections"

  end

  def create
    params[:event][:created_by] = current_user.id
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
