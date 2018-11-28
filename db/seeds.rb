AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Developer.create(name: Faker::Color.color_name, url: Faker::Internet.url, description:Faker::Lorem.sentence, is_live: true)
App.create(name: Faker::Name.name, description:Faker::Lorem.sentence, is_live:true, info_url:Faker::Internet.url, developer_id:1)
Distributor.create(name: Faker::Dessert.variety, badge_image_url:Faker::Internet.url, is_live:true)
DistributorLink.create(link:Faker::Internet.url, distributor_id:1, app_id: 1, is_live: true)
Offering.create(name: Faker::Fallout.character, description: Faker::Lorem.sentence, shop_link:Faker::Internet.url, is_live:true)
WorksWith.create(title:Faker::Lorem.sentence, description: Faker::Lorem.sentence, is_live: true, offering_id:1, app_id: 1)
Testimonial.create(title: Faker::Lorem.sentence, description:Faker::Lorem.sentence, is_live: true, works_with_id: 1)
UseCase.create(title:Faker::Lorem.sentence, description: Faker::Lorem.sentence, is_live: true, works_with_id: 1)
ExampleImage.create(image_url:Faker::Internet.url, caption: Faker::Lorem.sentence, works_with_id:1, is_live:true)

