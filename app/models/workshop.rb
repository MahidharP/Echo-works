class Workshop < ActiveRecord::Base
    belongs_to :college
    belongs_to :workshop_type
    has_many :students
    has_many :technologies
end
