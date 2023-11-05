# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'transtalents.th@gmail.com',
password: 'Transtalents.thAdmin',
admin: true)


Testimonial.delete_all
puts 'Creating new testimonials'

10.times do
  Testimonial.create!(
    name: 'Hannah Schmitt',
    detail: 'Design Director - Agoda',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas.'
  )
end

Speaker.delete_all
puts 'Creating new speakers'

15.times do
  Speaker.create!(
    first_name: "Nikki",
    last_name: "Phinyapincha",
    occupation: "Chief Executive Officer"
  )
end
