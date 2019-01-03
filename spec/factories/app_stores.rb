FactoryBot.define do
  sequence :app_store_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :app_store do
    name {:app_store_name}
    badge_image_url {Faker::Internet.url}
    icon_id {'apple'}
    is_live {true}
    trait :wip do
      is_live {false}
    end
    trait :no_badge do
      badge_image_url {false}
    end
    trait :no_icon do
      icon_id {''}
    end
    after (:create) do |app_store|
      a = build(:app)
      create :app_store_link, app: a, app_store: app_store
    end
  end
end
