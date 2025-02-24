# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coach.create(
  first_name: "Alan",
  last_name: 'Albertson',
  title: 'physics teacher',
  introduction: 'I do physics',
  phone: 2121111111
)
Coach.create(
  first_name: "Bob",
  last_name: 'Barley',
  title: 'Music Teacher',
  introduction: 'Bob is a world renown builder who shines in both the art of architecture and singing.',
  phone: 2122222222
)

Student.create(
  first_name: "Zed",
  last_name: 'Zylophone',
  phone: 2123333333

)
Student.create(
  first_name: "Yasmine",
  last_name: 'Yellow',
  phone: 2124444444

)
Student.create(
  first_name: "Xerzes",
  last_name: 'Xerox',
  phone: 2125555555

)

Lesson.create(
  title: "Alan's physics class",
  description: "physics 101",
  coach_id: 1,
  date: '1/20/2025',
  time: 8,
)

Lesson.create(
  title: "Alan's physics class",
  description: "physics 101 part 2",
  notes: 'remember the stuff from the previous class please',
  score: 10,
  coach_id: 1,
  student_id: 1,
  date: '1/20/2024',
  time: 8
)

Lesson.create(
  title: "Alan's physics class",
  description: "physics 101 part 3",
  notes: 'remember the stuff from the previous class please',
  score: 5,
  coach_id: 1,
  student_id: 1,
  date: '1/21/2023',
  time: 8
)

Lesson.create(
  title: "Alan's empty lesson",
  description: "physics 101 part 245",
  notes: 'why wont anyone come',
  coach_id: 1,
  date: '1/24/3024',
  time: 8
)

Lesson.create(
  title: "Alan's future class for #1",
  description: "physics 101 part 245",
  notes: 'why wont anyone come',
  coach_id: 1,
  student_id: 1,
  date: '1/24/3024',
  time: 8
)

Lesson.create(
  title: "Alan's second future class for #1",
  description: "physics 101 part 245",
  notes: 'why wont anyone come',
  coach_id: 1,
  student_id: 1,
  date: '1/24/3024',
  time: 8
)

Lesson.create(
  title: "Alan's future class for #2",
  description: "physics 101 part 245",
  notes: 'why wont anyone come',
  coach_id: 1,
  student_id: 2,
  date: '1/24/3024',
  time: 8
)