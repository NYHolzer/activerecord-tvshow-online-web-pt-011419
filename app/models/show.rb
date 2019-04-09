class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum('rating')
  end 
  
  def self.most_popular_show
    popular = self.highest_rating
    Movie.find_by(rating: popular)
  end 
end