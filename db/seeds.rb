# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Expertise.destroy_all
Skillset.destroy_all

users = [
  { :first_name => "Bernard", :last_name => "Chan", 
    :email => "bchan419@gmail.com", 
    :tsl_class => "Fall 2012",
    :user_name => "bchan"
  },
  { :first_name => "Will", :last_name => "Richman", 
     :email => "williamrichman@gmail.com", 
     :tsl_class => "Fall 2012",
     :user_name => "will_richman"
  }
]

expertises = [
  { :tags => "CSS" },
  { :tags => "HTML" },
  { :tags => "JavaScript" },
  { :tags => "Ruby on Rails" },
  { :tags => "OmniAuth" },
  { :tags => "Keynote" },
  { :tags => "Financial Modeling" },
  { :tags => "Lean Start-up" }
]


user_skillsets = [
  { :user_name => "bchan", :tags => "Lean Start-up" }, 
  { :user_name => "bchan", :tags => "OmniAuth" }, 
  { :user_name => "bchan", :tags => "Ruby on Rails" }, 
  { :user_name => "will_richman", :tags => "Financial Modeling" }, 
  { :user_name => "will_richman", :tags => "JavaScript" }, 
  { :user_name => "will_richman", :tags => "Ruby on Rails" },
  { :user_name => "will_richman", :tags => "CSS" },
  { :user_name => "will_richman", :tags => "HTML" }
]

User.create users
Expertise.create expertises

user_skillsets.each do |user_skillset|
  u = User.find_by_user_name(user_skillset[:user_name])
  t = Expertise.find_by_tags(user_skillset[:tags])
  Skillset.create :user_id => u.id, :expertise_id => t.id
end