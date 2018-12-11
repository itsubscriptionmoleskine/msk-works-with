FactoryBot.define do
  sequence :distributor_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :distributor do
    name {:distributor_name}
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
    after (:create) do |distrubtor|
      a = build(:app)
      create :distributor_link, app: a, distributor: distrubtor
    end
  end
end
