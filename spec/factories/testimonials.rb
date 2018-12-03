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
    trait :wip do
      is_live {false}
    end
  end
end