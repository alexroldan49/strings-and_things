class OrdersController < ApplicationController

    def create
        order = Order.create(order_params)
        if order
            # if product_order.save
           params[:product_orders].each do |product|
            prod = order.product_orders.build(product_id: product[:product_id])
            prod.save
            byebug

            end
            # build product
                render json: order, status: :ok
            # else
            # render json: {errors: order.errors}, status: :unprocessable_entity
            # end
        else
            render json: {errors: order.errors}, status: :unprocessable_entity
        end
    end
    

    private

    def product_order_params
        params.permit(:product_id, :order_id, :quantity)
    end

    def order_params
        params.permit(:user_id, product_orders: [])
    end
    
end
