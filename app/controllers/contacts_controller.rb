class ContactsController < ApplicationController
  skip_before_action only: %i[index show create new]
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    @managers = User.all.where(manager: true)
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path(@contacts)
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
    params.require(:contact).permit(:first_name, :last_name, :address, :email, :manager_id, :department)
  end
end
