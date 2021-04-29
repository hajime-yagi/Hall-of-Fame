class ContactMailer < ApplicationMailer
  
  
  default to: "poiu19961121@gmail.com"     # 送信先アドレス
 
  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせを承りました')
  end
 
end
