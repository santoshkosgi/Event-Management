class Registration < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  before_save :is_registered_already?

  private

  def is_registered_already?

    @registered =  Registration.where("event_id=? AND user_id =?",self.event_id,self.user_id)

    #puts registered.event_id

    if @registered
      return true
    else
      return false
    end

  end

end
