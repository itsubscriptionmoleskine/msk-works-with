FactoryBot.define do
  sequence :testimonial_title do |n|
    Faker::Name.name + n.to_s
  end
  factory :testimonial do
    title {:testimonial_title}
    description {Faker::Lorem.sentence}
    is_live {true}
    works_with
    video_embed {'<iframe width="560" height="315" src="https://www.youtube.com/embed/EOikwtpWcjY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'}
    promo_image_url {Faker::Internet.url}
    promo_text {Faker::Lorem.sentence}
    publish_date {Faker::Date.backward(1)}
    trait :wip do
      is_live {false}
    end
    trait :promo_text_too_long do
      promo_text {Faker::Lorem.sentence(word_count=250)}
    end
    trait :should_not_be_live do
      publish_date {Faker::Date.forward(60)}
    end
    trait :no_promo_image do
      promo_image_url {}
    end
    trait :no_promo_text do
      promo_text {}
    end
  end
end