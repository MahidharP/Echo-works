class College < ActiveRecord::Base
  has_many :workshops
  before_create :generate_college_code
  has_many :students


  def generate_college_code
    self.code = "#{self.name[0..4]}#{Random.rand(111..799)}"
  end
end
