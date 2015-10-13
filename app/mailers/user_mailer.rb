class UserMailer < ApplicationMailer
  
  
  
  def dm
    
    @greeting = "hi"

    mail to: "seiyamiyaoka@gmail.com", subject: "ActionMailer test"


end
end