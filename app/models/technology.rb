class Technology < ActiveRecord::Base
  has_many :student_technologies
	has_many :students, through: :student_technologies
end
