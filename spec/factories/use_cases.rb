FactoryBot.define do
  sequence :use_case_title do |n|
    Faker::Name.name + n.to_s
  end
  factory :use_case do
    title {:use_case_title}
    description {Faker::Lorem.sentence}
    is_live {true}
    works_with
    slug {Faker::Movies::Hobbit.character}
    trait :wip do
      is_live {false}
    end
    trait :no_slug do
      slug {}
    end
  end
end