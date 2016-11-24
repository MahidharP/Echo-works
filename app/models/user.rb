class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    has_many :students
    belongs_to :college

    has_many :permissions
    has_many :roles, through: :permissions

    def role?(role)
        roles.pluck(:name).include?(role)
    end

    def is_admin?
        return true if role == 'admin'
    end
end
