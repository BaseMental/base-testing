require 'machinist/active_record'

class Lead
  extend Machinist::Machinable
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :company
  attr_accessor :title
  attr_accessor :email
end

Lead.blueprint do
  first_name {Faker::Name.first_name}
  last_name {Faker::Name.last_name}
  company {Faker::Company.name}
  title {Faker::Lorem.sentence}
  email {Faker::Internet.email}
end



