# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Hospital.delete_all
TypeofDoctor.delete_all
User.delete_all
Doctor.delete_all
Review.delete_all
Affiliation.delete_all
Patient.delete_all
Message.delete_all
Reply.delete_all

# Create the hospital names
puts "Creating hospital names..."
northwesternmemorial = Hospital.create(name: "Northwestern Memorial", private_public_hospital: "private", year_founded: "1907")
universityofchicago = Hospital.create(name: "University of Chicago", private_public_hospital: "private", year_founded: "1926")
shriners = Hospital.create(name: "Shriners", private_public_hospital: "private", year_founded: "1955")
jhu = Hospital.create(name: "Johns Hopkins University", private_public_hospital: "private", year_founded: "2006")
queens = Hospital.create(name: "Queens Medical Center", private_public_hospital: "private", year_founded: "1975")

# Create the type of doctor
puts "Creating type of doctor..."
oncology = TypeofDoctor.create(specialty: "oncology")
radiology = TypeofDoctor.create(specialty: "radiology")
pediatrics = TypeofDoctor.create(specialty: "pediatrics")
primarycare = TypeofDoctor.create(specialty: "primarycare")
optometry = TypeofDoctor.create(specialty: "optometry")

# Create the users
puts "Creating users..."
rubinstoudemire = User.create(name: "Rubin Stoudemire", email: "jkor@gmail.com", date_joined: "2-3-2010", password: "testing")
jameshan = User.create(name: "James Han", email: "jerome.miller@yahoo.com", date_joined: "1-6-2008", password: "testing")
thomaskirkland = User.create(name: "Thomas Kirkland", email: "max1989@gmail.com", date_joined: "5-7-2014", password: "testing")
lucybell = User.create(name: "Lucy Bell", email: "feliz.noreiga@gmail.com", date_joined: "7-12-2012", password: "testing")
lesliejohnson = User.create(name: "Leslie Johnson", email: "hjones@hotmail.com", date_joined: "7-5-2009", password: "testing")

# Create the doctors
puts "Creating doctors..."
rubinstoudemire = Doctor.create(name: "Dr. Rubin Stoudemire", dob: "11-20-1980", education: "USC", years_of_experience: "10", specialty: oncology.id, typeofdoctor_id: oncology.id, hospital_id: northwesternmemorial.id, user_id: rubinstoudemire.id)
jameshan = Doctor.create(name: "Dr. James Han", dob: "1-08-1956", education: "UCSF", years_of_experience: "30", specialty: radiology.id, typeofdoctor_id: radiology.id, hospital_id: universityofchicago.id, user_id: jameshan.id)
thomaskirkland = Doctor.create(name: "Dr. Thomas Kirkland", dob: "2-6-1978", education: "Northwestern", years_of_experience: "15", specialty: pediatrics.id, typeofdoctor_id: pediatrics.id, hospital_id: shriners.id, user_id: thomaskirkland.id)
lucybell = Doctor.create(name: "Dr. Lucy Bell", dob: "12-20-1970", education: "Florida State", years_of_experience: "20", specialty: primarycare.id, typeofdoctor_id: pediatrics.id, hospital_id: shriners.id, user_id: lucybell.id)
lesliejohnson = Doctor.create(name: "Dr. Leslie Johnson", dob: "12-16-1988", education: "Harvard", years_of_experience: "3", specialty: optometry.id, typeofdoctor_id: optometry.id, hospital_id: jhu.id, user_id: lesliejohnson.id)

# Create the reviews
puts "Creating the reviews..."
review1 = Review.create(user: rubinstoudemire.id, treatment_quality: "10", recommendation: "yes", review_comments: "awesome bedside manner")
review2 = Review.create(user: jameshan.id, treatment_quality: "4", recommendation: "no", review_comments: "too direct and mean")
review3 = Review.create(user: thomaskirkland.id, treatment_quality: "8", recommendation: "yes", review_comments: "patient and kind")
review4 = Review.create(user: lucybell.id, treatment_quality: "9", recommendation: "yes", review_comments: "comforting and smart")
review5 = Review.create(user: lesliejohnson.id, treatment_quality: "8", recommendation: "yes", review_comments: "compassionate individual")

#Create the affiliations
puts "Creating the affiliations..."
Affiliation.create(hospital_id: northwesternmemorial.id, doctor_id: rubinstoudemire.id)
Affiliation.create(hospital_id: universityofchicago.id, doctor_id: jameshan.id)
Affiliation.create(hospital_id: jhu.id, doctor_id: thomaskirkland.id)
Affiliation.create(hospital_id: shriners.id, doctor_id: lucybell.id)
Affiliation.create(hospital_id: northwesternmemorial.id, doctor_id: lesliejohnson.id)

#Create the patients
puts "Creating the patients..."
jameslin = Patient.create(name: "James Lin", dob: "11-08-1978", diagnosis: "arthritis", symptoms: "sore joints", level_of_pain: "8/10", notes: "constant pain", hospital_id: northwesternmemorial.id, doctor_id: rubinstoudemire.id)
janedoe = Patient.create(name: "Jane Doe", dob: "1-07-1928", diagnosis: "cold", symptoms: "cough", level_of_pain: "5/10", notes: "dry mouth", hospital_id: jhu.id, doctor_id: thomaskirkland.id)
johnmacintosh = Patient.create(name: "John Macintosh", dob: "11-29-1987", diagnosis: "flu", symptoms: "nausea", level_of_pain: "6/10", notes: "constant sore stomach", hospital_id: northwesternmemorial.id, doctor_id: rubinstoudemire.id)
larryjones = Patient.create(name: "Larry Jones", dob: "12-2-1998", diagnosis: "pneumonia", symptoms: "fever", level_of_pain: "4/10", notes: "long fever", hospital_id: universityofchicago.id, doctor_id: jameshan.id)
mustafasyon = Patient.create(name: "Mustafa Syon", dob: "4-08-1984", diagnosis: "heart attack", symptoms: "sore heart", level_of_pain: "10/10", notes: "left side of body in pain", hospital_id: northwesternmemorial.id, doctor_id: rubinstoudemire.id)

#Create the patients
puts "Creating the messages..."
Message.create(body: "test", doctor_id: rubinstoudemire.id, patient_id: jameslin.id)
Message.create(body: "test", doctor_id: jameshan.id, patient_id: janedoe.id)
Message.create(body: "test", doctor_id: thomaskirkland.id, patient_id: johnmacintosh.id)
Message.create(body: "test", doctor_id: lucybell.id, patient_id: larryjones.id)
Message.create(body: "test", doctor_id: lesliejohnson.id, patient_id: mustafasyon.id)