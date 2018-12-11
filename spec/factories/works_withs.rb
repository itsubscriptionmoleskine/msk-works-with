FactoryBot.define do
  sequence :works_with_title do |n|
    Faker::Name.name + n.to_s
  end
  factory :works_with do
    title {:works_with_title}
    description {Faker::Lorem.sentence}
    is_live {true}
    offering
    app
    promo_image_url {Faker::Internet.url}
    promo_text {Faker::Lorem.sentence}
    trait :promo_text_too_long do
      promo_text {Faker::Lorem.sentence(word_count=250)}
    end
    trait :wip do
      is_live {false}
    end
    trait :no_promo_image do
      promo_image_url {}
    end
    trait :no_promo_text do
      promo_text {}
    end
  end
end