# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Hospital_Name.delete_all
Doctors.delete_all
Type_of_Doctor.delete_all
User.delete_all
Reviews.delete_all

# Create the hospital names
puts "Creating hospital names..."
northwesternmemorial = Hospital_Name.create(name: "Northwestern Memorial", private_public_hospital: "private", year_founded: "1907", doctors: "1")
universityofchicago = Hospital_Name.create(name: "University of Chicago", private_public_hospital: "private", year_founded: "1926", doctors: "2")
shriners = Hospital_Name.create(name: "Shriners", private_public_hospital: "private", year_founded: "1955", doctors: "3")
jhu = Hospital_Name.create(name: "Johns Hopkins University", private_public_hospital: "private", year_founded: "2006", doctors: "4")
queens = Hospital_Name.create(name: "Queens Medical Center", private_public_hospital: "private", year_founded: "1975", doctors: "5")

# Create the type of doctor
puts "Creating type of doctor..."
oncology = Type_of_Doctor.create(specialty: "oncology", doctor: "1")
radiology = Type_of_Doctor.create(specialty: "radiology", doctor: "2")
pediatrics = Type_of_Doctor.create(specialty: "pediatrics", doctor: "3")
primarycare = Type_of_Doctor.create(specialty: "primarycare", doctor: "4")
optometry = Type_of_Doctor.create(specialty: "optometry", doctor: "5")

# Create the doctors
puts "Creating doctors..."
rubinstoudemire = Doctors.create(name: "Dr. Rubin Stoudemire", dob: "11-20-1980", education: "USC", years_of_experience: "10", specialty: oncology.id)
jameshan = Doctors.create(name: "Dr. James Han", dob: "1-08-1956", education: "UCSF", years_of_experience: "30", specialty: radiology.id)
thomaskirkland = Doctors.create(name: "Dr. Thomas Kirkland", dob: "2-6-1978", education: "Northwestern", years_of_experience: "15", specialty: pediatrics.id)
lucybell = Doctors.create(name: "Dr. Lucy Bell", dob: "12-20-1970", education: "Florida State", years_of_experience: "20", specialty: primarycare.id)
lesliejohnson = Doctors.create(name: "Dr. Leslie Johnson", dob: "12-16-1988", education: "Harvard", years_of_experience: "3", specialty: optometry.id)

# Create the users
puts "Creating users..."
jamie = User.create(name: "Jamie Kor", email: "jkor@gmail.com", date_joined: "2-3-2010", password: "familyties")
jerome = User.create(name: "Jerome Miller", email: "jerome.miller@yahoo.com", date_joined: "1-6-2008", password: "87298*")
max = User.create(name: "Max Power", email: "max1989@gmail.com", date_joined: "5-7-2014", password: "krytonite129")
feliz = User.create(name: "Feliz Noreiga", email: "feliz.noreiga@gmail.com", date_joined: "7-12-2012", password: "09*7292")
hannah = User.create(name: "Hannah Jones", email: "hjones@hotmail.com", date_joined: "7-5-2009", password: "mrjonesdines")

# Create the reviews
puts "Creating the reviews..."
review1 = Reviews.create(user: jamie.id, treatment_quality: "10", recommendation: "yes", review_comments: "awesome bedside manner")
review2 = Reviews.create(user: jerome.id, treatment_quality: "4", recommendation: "no", review_comments: "too direct and mean")
review3 = Reviews.create(user: max.id, treatment_quality: "8", recommendation: "yes", review_comments: "patient and kind")
review4 = Reviews.create(user: feliz.id, treatment_quality: "9", recommendation: "yes", review_comments: "comforting and smart")
review5 = Reviews.create(user: hannah.id, treatment_quality: "8", recommendation: "yes", review_comments: "compassionate individual")
