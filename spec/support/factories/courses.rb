# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course_valid do
    name "React"
    description "Create web components"
    status 1
  end

  factory :course_invalid do
    name "Angular"
    description nil
    status 1
  end
end
