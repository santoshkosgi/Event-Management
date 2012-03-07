class AuthorizationsController < ApplicationController
   before_filter :require_login, :only => [:destroy]

  def create

    $omniauth = request.env['omniauth.auth'] #this is where you get all the data from your provider through omniauth
    puts "befor find_from_hash"
    puts $omniauth
    @auth = Authorization.find_from_hash($omniauth)

    #raise @auth.inspect
    if current_user
      puts "current user logged in"
      flash[:notice] = "Successfully added #{$omniauth['provider']} authentication"
      current_user.authorizations.create(:provider => $omniauth['provider'], :uid => $omniauth['uid']) #Add an auth to existing user
      redirect_to edit_user_path(:current)
    elsif @auth
      puts "auth created existing"
      flash[:notice] = "Welcome back #{$omniauth['provider']} user"
      UserSession.create(@auth.user, true) #User is present. Login the user with his social account
      if $omniauth['provider'] == "linked_in"
      $client = LinkedIn::Client.new('sup72rpsh43n', 'wYzneYSh0nOMHnHv')
      puts @client
      $client.authorize_from_access($omniauth['extra']['access_token'].token,$omniauth['extra']['access_token'].secret)
      puts "authorized"
      @connection = $client.connections
      puts @connection
      puts $client.add_share(:comment => "This is Test Update")
      end
      puts "end"
      redirect_to root_url
    else
      redirect_to getemail_path
    end
  end

  def gotemail

    puts "new auth"
      @new_auth = Authorization.create_from_hash($omniauth, current_user) #Create a new user
      puts "user saved"
      flash[:notice] = "Welcome #{$omniauth['provider']} user. Your account has been created."
      UserSession.create(@new_auth.user, true) #Log the authorizing user in.
      puts "usersession saved"
      if $omniauth['provider'] == "linked_in"
      $client = LinkedIn::Client.new('sup72rpsh43n', 'wYzneYSh0nOMHnHv')
      puts @client
      $client.authorize_from_access($omniauth['extra']['access_token'].token,$omniauth['extra']['access_token'].secret)
      puts "authorized"
      @connection = $client.connections
      puts @connection
      puts $client.add_share(:comment => "This is Test Update")
      end
      redirect_to root_url
  end


  def failure
    puts "in failure"
    flash[:notice] = "Sorry, You din't authorize"
    redirect_to root_url
  end

  def destroy
    @authorization = current_user.authorizations.find(params[:id])
    flash[:notice] = "Successfully deleted #{@authorization.provider} authentication."
    @authorization.destroy
    redirect_to edit_user_path(:current)
  end
end
