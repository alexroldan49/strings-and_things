class ProductsController < ApplicationController

    
    def index
        render json: Product.all, status: :ok
    end
    
    def show
        product = find_Product
        if product
            render json: product, status: :ok
        else
            render json: {errors: "Product not found"}, status: :not_found
        end
    end
    

    private

    def find_Product
        Product.find_by(id: params[:id])
    end
    
    
end
