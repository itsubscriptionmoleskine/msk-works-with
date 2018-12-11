FactoryBot.define do
  sequence :app_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :app do
    name {:app_name}
    description {Faker::Lorem.sentence}
    info_url {Faker::Internet.url}
    is_live {true}
    developer
    trait :wip do
      is_live {false}
    end
    trait :description_too_long do
      description {Faker::Lorem.sentence(word_count=250)}
    end
    after (:create) do |app|
      o = build(:offering)
      d = build(:distributor)
      create :works_with, app: app, offering: o
      create :distributor_link, app: app, distributor: d
    end
  end
end