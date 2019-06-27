class ContactsController < ApplicationController
  before_action only: :show

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @cocktail.save
      redirect_to cocktail_path(@contact)
    else
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path(root_path)
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :email, :manager)
  end
end
