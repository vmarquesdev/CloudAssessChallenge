user1 = User.create(email: 'firstuser@test.com', password: '123456')

org1 = Organisation.create(title: "ABC Company", location: "Sydney")

org1.persons.create(first_name: "Paul", last_name: "Smith", user_id: user1.id, assessment_count: 5)
org1.persons.create(first_name: "David", last_name: "Cline", user_id: user1.id, assessment_count: 3)

org2 = Organisation.create(title: "XYZ Company", location: "Brisbane")

org2.persons.create(first_name: "Andrew", last_name: "Baker", user_id: user1.id, assessment_count: 0)
org2.persons.create(first_name: "Adam", last_name: "Broadbent", user_id: user1.id, assessment_count: 0)

org3 = Organisation.create(title: "Company ABC XYZ", location: "Melbourne")

org3.persons.create(first_name: "Michael", last_name: "Clarke", user_id: user1.id, assessment_count: 14)
