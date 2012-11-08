class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :tsl_class, :user_name

  has_many :skillsets    
  has_many :expertises, :through => :skillsets
end
