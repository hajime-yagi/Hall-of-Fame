class ContactMailer < ApplicationMailer
  default to: ENV['TOMAIL']  
  default from: ENV['FROMMAIL']
 
  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせを承りました')
  end
 
end
