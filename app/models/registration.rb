class Registration < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  before_save :is_registered_already?
  #paypal

  def pay
    pay_request = PaypalAdaptive::Request.new
      data = {
        "returnUrl" => "127.0.0.1:3000/events/register",
        "requestEnvelope" => {"errorLanguage" => "en_US"},
        "currencyCode"=>"USD",
        "receiverList"=>{"receiver"=>[{:email => "santos_1330954528_biz_api1.gmail.com",:amount=> 10000}]},
        "actionType"=>"PAY",
      }
   pay_response = pay_request.pay(data)

    if pay_response.success?
        # Send user to paypal
        puts "success"
        #redirect_to pay_response.approve_paypal_payment_url
    else
        puts pay_response.errors.first['message']
        #redirect_to "/", notice: "Something went wrong. Please contact support."
    end


  end

  private

  def is_registered_already?

    @registered =  Registration.where("event_id=? AND user_id =?",self.event_id,self.user_id)

    #puts registered.event_id

    if @registered.empty?
      return true
    else
      return false
    end

  end
end
