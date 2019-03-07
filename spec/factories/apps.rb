FactoryBot.define do
  sequence :app_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :app do
    name {:app_name}
    description {Faker::Lorem.sentence}
    info_url {Faker::Internet.url}
    is_live {true}
    partner
    slug { 'a fake slug'}
    trait :wip do
      is_live {false}
    end
    trait :no_slug do
      slug { }
    end
    trait :description_too_long do
      description {Faker::Lorem.sentence(word_count=250)}
    end
    after (:create) do |app|
      o = build(:product)
      d = build(:app_store)
      create :works_with, app: app, product: o
      create :app_store_link, app: app, app_store: d
    end
  end
end