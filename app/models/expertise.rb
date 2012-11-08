class Expertise < ActiveRecord::Base
  attr_accessible :tags
  
  has_many :skillsets    
  has_many :users, :through => :skillsets
  
end
