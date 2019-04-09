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
end