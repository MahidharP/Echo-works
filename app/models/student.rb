class Student < ActiveRecord::Base
    has_many :student_technologies
    has_many :technologies, through: :student_technologies
    belongs_to :workshop
    belongs_to :college

    validates_presence_of :name
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    validates :mobile, numericality: { allow_blank: true }, allow_blank: true, length: { minimum: 10, maximum: 15 }

    validates_presence_of :feedback

    # validates_presence_of :suggestion
    # #validates_presence_of :join
    # #validates_presence_of :beneficial
    # #validates_presence_of :consult

    validates_uniqueness_of :mobile, :email
    validate :college_co

    after_create :thank_you
    # after_create :stu_post

    before_create :assign_college_id

    def thank_you
        puts 'Thank You for your kind reply, we will get back to you'
    end

    def college_co
        coll = College.where('code = ?', college_code)
        if coll == []
            errors.add(:college, " Code Can't be Empty or Not Matched")
        else
            puts ''
      end
    end

    # def stu_post
    #     if consult == true
    #         begin
    #             response = HTTParty.post('http://localhost:3001/students', body: { 'student' => { 'name' => name, 'email' => email } })
    #         rescue Errno::ECONNREFUSED
    #             Notification.report_notify(self).deliver!
    #         end
    #     end
    # end

    def assign_college_id
        cal = College.find_by_code(college_code)
        self.college_id = cal.id
    end
end

# if student_consult == true
#     notice = ''
#     begin
#         response = HTTParty.post('http://localhost:3001/students', body: { 'student' => { 'name' => student.name } })
#         notice = 'Thank you for your feedback'
#     rescue Errno::ECONNREFUSED
#         notice = 'Failed to open TCP connection to localhost:3001'
#         # Notification.failed_post(@student)
#     end
#     redirect_to new_student_path, notice: notice
# else
#     redirect_to new_student_path, notice: 'Thanks For Your Valuable Feedback'
#   end
# end
