# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dream do
    name "MyString"
    description "MyText"
    visible true
    age 1
    location "MyString"
  end
end
