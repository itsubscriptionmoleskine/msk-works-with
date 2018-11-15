AdminUser.create!(email: 'admin@example.com',
                  password: 'password',
                  password_confirmation: 'password') if Rails.env.development?
Developer.create(name:'NeoLab',
                 url:'https://www.neolab.jr',
                 description:'With Ncode technology, you can read books with a pen (TOUCH & PLAY)
The contents of the NATURAL HANDWRITING recorded with the ballpoint pen')
