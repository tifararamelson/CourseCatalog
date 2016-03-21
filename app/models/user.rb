class User < ActiveRecord::Base
  include Clearance::User
	has_many :enrollments
	has_many :courses, -> { distinct }, through: :enrollments
end
