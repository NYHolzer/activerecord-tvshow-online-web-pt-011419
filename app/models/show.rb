class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum('rating')
  end 
  
  def self.most_popular_show
    popular = self.highest_rating
    self.find_by(rating: popular)
  end 
  
  def lowest_rating
    binding.pry
  end 
  
  def least_popular_show
  end 
  
  def ratings_sum 
  end 
  
  def popular_shows
  end
  
  def shows_by_alphabetical_order
  end 
  
end