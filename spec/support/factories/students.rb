# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name "Marcelo"
    register_number "A012"
    status 1
  end

  trait :studentinvalid do
    name nil
    register_number nil
    status 1
  end
end
