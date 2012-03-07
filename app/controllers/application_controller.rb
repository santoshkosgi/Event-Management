class ApplicationController < ActionController::Base
  protect_from_forgery


  before_filter :require_login
  skip_before_filter :require_login, :only => [:index]

  helper_method :current_user,:is_organisor?,:is_registered_already?


  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end

    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to :controller => "user_sessions",:action =>"new" # halts request cycle
      end
    end

    def logged_in?
      !!current_user
    end

    def is_organisor?
      if current_user.role == 1
        return true
      else
        return false
      end
    end

    def is_registered_already?(event)

      @registered = Registration.where("event_id=? AND user_id =?",event,current_user.id)

      #puts registered.event_id

      if @registered.empty?
        puts "record exists"
        return false

      else
        puts "record doesn't exists"
        return true
      end

    end

end
