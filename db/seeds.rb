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
  {  :first_name => "Will", :last_name => "Richman", 
     :email => "williamrichman@gmail.com", 
     :tsl_class => "Fall 2012",
     :user_name => "wrichman"
  },
  {  :first_name => "Fahad", :last_name => "Sami", 
     :email => "fahad.sami@gmail.com", 
     :tsl_class => "Fall 2012",
     :user_name => "fsami"
  },
  {  :first_name => "Ashley", :last_name => "Wrobel", 
     :email => "ashwrobel@gmail.com", 
     :tsl_class => "Fall 2012",
     :user_name => "awrobel"
  },
  {  :first_name => "Travis", :last_name => "Topham", 
     :email => "travis.topham@gmail.com", 
     :tsl_class => "Fall 2012",
     :user_name => "t_topham"
  }
]

expertises = [
  { :tags => "CSS" },
  { :tags => "HTML" },
  { :tags => "JavaScript" },
  { :tags => "Ruby on Rails" },
  { :tags => "OmniAuth" },
  { :tags => "Keynote" },
  { :tags => "Financial Analysis" },
  { :tags => "Lean Startup" },
  { :tags => "Wireframe" },
  { :tags => "UX Design" },
  { :tags => "Illustrator" },
  { :tags => "Graphics Design" },
  { :tags => "Country Music" }
]

user_skillsets = [
  { :user_name => "bchan", :tags => "Lean Startup" }, 
  { :user_name => "bchan", :tags => "OmniAuth" }, 
  { :user_name => "bchan", :tags => "Ruby on Rails" }, 
  
  { :user_name => "wrichman", :tags => "Financial Analysis" }, 
  { :user_name => "wrichman", :tags => "JavaScript" }, 
  { :user_name => "wrichman", :tags => "Ruby on Rails" },
  { :user_name => "wrichman", :tags => "CSS" },
  { :user_name => "wrichman", :tags => "HTML" },

  { :user_name => "fsami", :tags => "Financial Analysis" }, 
  { :user_name => "fsami", :tags => "Ruby on Rails" },
  
  { :user_name => "awrobel", :tags => "HTML" }, 
  { :user_name => "awrobel", :tags => "CSS" }, 
  { :user_name => "awrobel", :tags => "Wireframe" }, 
  { :user_name => "awrobel", :tags => "UX Design" }, 
  
  { :user_name => "t_topham", :tags => "HTML" }, 
  { :user_name => "t_topham", :tags => "CSS" }, 
  { :user_name => "t_topham", :tags => "Illustrator" }, 
  { :user_name => "t_topham", :tags => "Graphics Design" }, 
  { :user_name => "t_topham", :tags => "Ruby on Rails" }, 
  { :user_name => "t_topham", :tags => "Country Music" }
]

User.create users
Expertise.create expertises

user_skillsets.each do |user_skillset|
  u = User.find_by_user_name(user_skillset[:user_name])
  e = Expertise.find_by_tags(user_skillset[:tags])
  Skillset.create :user_id => u.id, :expertise_id => e.id
end


