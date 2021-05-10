class ContactsController < ApplicationController
  skip_before_action :require_login
  def index
    @contact = Contact.new
  end
 
  def thanks
    @contact = Contact.new(contact_params)
    if @contact.valid?
    ContactMailer.received_email(@contact).deliver
    redirect_to contact_done_path
    flash[:success] = "送信しました"
    else
      flash.now[:alert] = "送信できませんでした"
      render :index
  end
end
def done;end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
end
end