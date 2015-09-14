class ContactsController < ApplicationController
  def index
     @contact = Contact.new
  end
  
  def permit
    @contact = Contact.new(create_params)
    if @contact.valid?
       
      render action: 'permit'
      #redirect_to contacts_path :index
    else
      render action: 'index'
      
    end
    def thanks
      @contact = Contact.create(create_params)
    end
  end
  
   private
  
  def create_params
    params.require(:contact).permit(:name,:name2,:addres,:content)
end
  end
