class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end
  def create
    Contact.create(create_params)
    redirect_to action: :index
  end
   private
  
  def create_params
    params.require(:contact).permit(:name,:name2,:addres,:content)
end
  
end
