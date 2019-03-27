FactoryBot.define do
  sequence :partner_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :partner do
    name {:partner_name}
    description {Faker::Lorem.sentence}
    promo_text {Faker::Lorem.sentence}
    url {Faker::Internet.url}
    is_live {true}
    logo_image_url {Faker::Internet.url}
    slug { 'a fake slug'}
    meta_title {:partner_name}
    meta_description {Faker::Lorem.sentence}
    meta_keywords {Faker::Lorem.word}
    trait :wip do
      is_live {false}
    end
    trait :no_slug do
      slug {  }
    end
    trait :promo_text_too_long do
      promo_text {Faker::Lorem.sentence(word_count=250)}
    end
    trait :no_meta_data do
      meta_title {}
      meta_description {}
      meta_keywords {}
    end
  end
end