class ContactMailer < ApplicationMailer
  default to: ENV['TOMAIL']  
 
  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせを承りました')
  end
 
end
