# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name "React"
    description "Create web components"
    status 1
  end

  trait :courseinvalid do
    name "Angular"
    description nil
    status 1
  end
end
