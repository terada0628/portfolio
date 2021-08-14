class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to contacts_complete_path
  end

  def complete
  end


  private

  def contact_params
    params.require(:contact).permit(:type, :title, :content, :family_name, :first_name, :family_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :sex)
  end


end
