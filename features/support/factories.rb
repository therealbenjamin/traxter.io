FactoryGirl.define do
  factory :user do
    email                 "raditude@gmail.com"
    password              "password"
    password_confirmation "password"
  end
end