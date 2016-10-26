class Student < ActiveRecord::Base
  belongs_to :college

  validates_presence_of :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_numericality_of :mobile
  validates_length_of :mobile, is: 10
  validates_presence_of :feedback
  validates_presence_of :suggestion
  #validates_presence_of :join
  #validates_presence_of :beneficial
  #validates_presence_of :consult
  validates_uniqueness_of :mobile, :email
  validate :college_code

  after_create :thank_you


   before_create :assign_college_id

  def thank_you
    puts "Thank You for your kind reply, we will get back to you"
  end


  def college_code
    coll = College.where('code = ?', self.collge)
      if coll == []
        errors.add(:college, " Code Can't be Empty or Not Matched")
    else
      puts ""
    end
  end

  def assign_college_id
    cal = College.find_by_code(self.collge)
    self.college_id = cal.id
  end
end
