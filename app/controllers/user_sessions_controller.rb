class UserSessionsController < ApplicationController
  before_filter :require_login, :except => [:new, :create]
  layout Proc.new { |controller| controller.request.xhr? ? nil : 'application' }

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      respond_to do |format|
        format.js
        format.html
      end
    else
      respond_to do |format|
        format.js
        format.html
      end
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url
  end

end
