# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student_valid do
    name "Marcelo"
    register_number "A012"
    status 1
  end
  factory :student_invalid do
    name nil
    register_number nil
    status 1
  end
end
