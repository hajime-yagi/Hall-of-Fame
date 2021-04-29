class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end
 
  def thanks
    @contact = Contact.new(contact_params)
    if @contact.valid?
    ContactMailer.received_email(@contact).deliver
 
    redirect_to profile_path
    flash[:success] = "お問い合わせフォームを送信しました"
    else
      render :index
  end
end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
end
end