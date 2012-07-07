# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dream do
    name "MyString"
    description "MyText"
    visible false
    age 1
    location "MyString"
  end
end
