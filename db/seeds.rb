org1 = Organisation.create(title: "ABC Company", location: "Sydney")

org1.persons.create(first_name: "Paul", last_name: "Smith", assessment_count: 5)
org1.persons.create(first_name: "David", last_name: "Cline", assessment_count: 3)

org2 = Organisation.create(title: "XYZ Company", location: "Brisbane")

org2.persons.create(first_name: "Andrew", last_name: "Baker", assessment_count: 0)
org2.persons.create(first_name: "Adam", last_name: "Broadbent", assessment_count: 0)

org3 = Organisation.create(title: "Company ABC XYZ", location: "Melbourne")

org3.persons.create(first_name: "Michael", last_name: "Clarke", assessment_count: 14)
