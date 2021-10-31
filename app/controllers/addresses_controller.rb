class AddressesController < ApplicationController

    

    def create
        address = Address.create(address_params)
        if address
            render json: address, status: :ok
        else
            render json: {errors: address.errors}, status: :unprocessable_entity
        end
    end
    

    private

    def address_params
        params.permit(:user_id, :address, :apt, :city, :state, :zipcode)
    end
end
