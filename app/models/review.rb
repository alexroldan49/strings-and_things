class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def include_user
    return self.user.username
  end
  
  
end
