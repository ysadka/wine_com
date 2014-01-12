class AddressesController < ApplicationController
  def index
    user = User.find_by(id: current_user.id)
    @addresses = user.addresses
  end

  def new
    @address = Address.new
  end

  def create
    address = Address.new(address_params)
    if address.save
      user = User.find_by(id: current_user.id)
      user.addresses << address
      redirect_to addresses_path
    else
      render :new
    end
  end

  def edit
    @address = Address.find_by(id: params[:id])
  end

  def update
    address = Address.find_by(id: params[:id])
    address.update_attributes(address_params)
    if address.save
      redirect_to addresses_path
    else
      render :edit
    end
  end

  def destroy
    address = Address.find_by(id: params[:id])
    address.destroy
    redirect_to addresses_path # Add notice for successful deletion
  end

  private

  def address_params
    params.require(:address).permit(:address1,
                                    :address2,
                                    :company,
                                    :city,
                                    :state,
                                    :zip)
  end
end
