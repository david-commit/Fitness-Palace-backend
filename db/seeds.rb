puts "🌱 Seeding data..."

User.create(first_name: "FN User1", last_name: "LN User1", email: "user1@google.com", password: "qwertyu", confirm_password: "qwertyu", trainer_id: 1)
User.create(first_name: "FN User2", last_name: "LN User2", email: "user2@google.com", password: "qwertyu", confirm_password: "qwertyu", trainer_id: 2)

Trainer.create(trainer_name: "Trainer1", job_title: "Trainer1 JD", specialization: "Weights")
Trainer.create(trainer_name: "Trainer2", job_title: "Trainer2 JD", specialization: "Bone Structure")
Trainer.create(trainer_name: "Trainer3", job_title: "Trainer3 JD", specialization: "Mass specials")

Review.create(user_id: 1, review: "Review for user 1 > ;klsx;ksmx;kkjnj lkms;kjnck klnx;kjn xlknxkjn kjxn;kjnx")
Review.create(user_id: 2, review: "Review for user 2 > ;klsx;ksmx;kkjnj lkms;kjnck klnx;kjn xlknxkjn kjxn;kjnx")
Review.create(user_id: 2, review: "Review for user 22 > ;klsx;ksmx;kkjnj lkms;kjnck klnx;kjn xlknxkjn kjxn;kjnx")

Appointment.create(user_id: 1, workout: "Bike riding, press ups", date: 22-11-09, duration: "2 hours", trainer_id: 1)
Appointment.create(user_id: 2, workout: "Bike riding, press ups", date: 22-11-09, duration: "2 hours", trainer_id: 1)

puts "🌱 Done seeding!"
