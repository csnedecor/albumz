
FactoryGirl.define do

  factory :photo do
    photo {File.new("#{Rails.root}/spec/factories/images/Bachalpseeflowers.jpg")}
  end

  factory :user do
    sequence(:email) {|n| "imsofancy#{n}@example.com"}
    password "secretPassword"
  end
end
