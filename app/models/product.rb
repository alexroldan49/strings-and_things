class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews

  def rating_average
    if self.reviews.length >= 1
      total_reviews = self.reviews.map do |review| review.star_rating end
          total_reviews.inject{ |sum, el| sum + el }.to_f / total_reviews.size
    else
      0
    end
  end
  
end
