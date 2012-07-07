# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dream_submission do
    first_name "MyString"
    last_name "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    dream "MyText"
    age 1
    email "MyString"
  end
end
