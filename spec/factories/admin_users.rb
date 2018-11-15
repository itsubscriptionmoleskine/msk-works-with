FactoryBot.define do
  factory :admin_user do
    email {Faker::Internet.email}
    password {'password'}
    password_confirm {'password'}
  end
end
