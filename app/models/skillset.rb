class Skillset < ActiveRecord::Base
  attr_accessible :expertise_id, :user_id
  
  belongs_to :user
  belongs_to :expertise
  
end
