class ContactsController < ApplicationController
  def index
     @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(create_params)
    if @contact.save
       
       redirect_to contacts_path, notice: '送信しました'
      #redirect_to contacts_path :index
    else
      render action: :index
      
    end
  end
  
   private
  
  def create_params
    params.require(:contact).permit(:name,:name2,:addres,:content)
end
  end
