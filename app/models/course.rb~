class Course < ActiveRecord::Base
	has_many :enrollments
	has_many :users, -> { distinct }, through: :enrollments
end
