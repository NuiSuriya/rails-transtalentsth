# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'transtalents.th@gmail.com',
password: 'Transtalent.thAdmin',
admin: true)


Testimonial.delete_all
puts 'Creating new testimonials'

10.times do
  testimonial = Testimonial.create!(
    name: 'Hannah Schmitt',
    detail: 'Design Director - Agoda',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas.'
  )

  file = URI.open('https://s3-alpha-sig.figma.com/img/d3c6/c0f0/deeb8f5d8ac8b3780b8ad0d1791ed9e6?Expires=1696204800&Signature=FDxThQ30mf6c0dn8fc6DJOLAl4T3Esn8yUlXLwgccNNiBdq8fWJxR3Tua1cXKac8Ir0QBYlqyY3if0MndDiff04v0Gxptcu6I0Ys0KTnIxUaBMCoPUAIoPDwNQCj3w7QEXiQg4mtup2e2OAcGbPOMNnA5GKfI1G-qmGCG1HThYng-CTbXmO9mSUY7wWnK8FSreorPY44Ri0Kj~2UWNhybDaGVE4XibNNaJryVCZya-mzFfi9LT8OG2JY~bTqHyo7rTQkCdYZF-7XhaHxK9nIBf6kF--DFldqlhwggqX74xxmGOc0YvVwDEKgqV7GGTCr8K9xNuST7UJDU~mCe4VtEw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4')
  testimonial.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  testimonial.save
end
