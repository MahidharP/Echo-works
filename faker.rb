15.times do
    college = College.new
    college.name = Faker::University.name
    college.save
end

45.times do
    workshop = Workshop.new
    workshop.name = Faker::Company.catch_phrase
    workshop.students_count = ('45', '55', '65', '50', '33', '42', '59').sample
    workshop.amount = ('35000', '45000', '50000', '25000', '30000', '60000').sample
    workshop.fee = ('Honor', 'PerHead').sample
    workshop.college_id = College.all.pluck(:id).sample
    workshop.workshop_type_id = WorkshopType.all.pluck(:id).sample
    workshop.start_date = Faker::Date.between(Date.today, Date.today + 2.months)
    workshop.end_date = Faker::Date.between(workshop.start_date, workshop.start_date + 5.days)
    workshop.save
end

2000.times do
    student = Student.new
    student.name = Faker::Name.name
    student.email = Faker::Internet.email
    student.mobile = Faker::PhoneNumber.cell_phone
    student.beneficial = Faker::Boolean.boolean
    student.feedback = Faker::Lorem.sentence
    student.consult = Faker::Boolean.boolean
    student.workshop_id = Workshop.all.pluck(:id).sample
    student.joining = Faker::Boolean.boolean
    student.college_code = College.all.pluck(:code).sample
    student.technology_ids = Technology.all.pluck(:id).sample
    student.save
end
