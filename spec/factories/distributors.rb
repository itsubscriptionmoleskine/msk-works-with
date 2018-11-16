FactoryBot.define do
  sequence :distributor_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :distributor do
    name {:distributor_name}
    badge_image_url {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
    after (:create) do |distrubtor|
      a = build(:app)
      create :distributor_link, app: a, distributor: distrubtor
    end
  end
end
