# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role = [ 'teacher', 'ta', 'student', 'admin' ]

10.times do
	course = Course.create(
		name: Faker::Food.sushi
	)

	5.times do
		user = User.create(
			first_name: Faker::FunnyName.name,
			last_name: Faker::Dessert.topping
		)

		Enrollment.create(
			role: role.sample,
			course_id: course.id,
			user_id: user.id
		)
	end
end

puts 'Data is seeded'