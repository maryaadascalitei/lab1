class Car < ActiveRecord::Base
	has_many :ratings

	validates :price, numericality: {greater_than:0}
	validates :stock, numericality: true

	def total_value
		price*stock
	end

	def self.most_expensive
		order(price: :desc).first
		#echiv car.order()
	end

	def average_rating
		#ratings.sum(:score) / ratings.size unless ratings.empty? 

  		if !ratings.size
  			ratings.sum(:score) / ratings.size
  		else
  			0 	
  		end		
	end

	def user_rating
	end

end