FactoryBot.define do
  sequence :video_url do |n|
    Faker::Internet.url + n.to_s
  end
  factory :video do
    youtube_url {:video_url}
    description {Faker::Lorem.sentence}
    is_live {true}
    works_with
    trait :wip do
      is_live {false}
    end
  end
end