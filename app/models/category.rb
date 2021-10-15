class Category < ApplicationRecord

    has_many :accessories
    has_many :products
    
end
