class OrdersController < ApplicationController

    def create
        order = Order.create(order_params)
    end
    

    private

    def order_params
        params.permit(:user_id, :product_id, :quantity)
    end
    
end
