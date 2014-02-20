class Faculty < ActiveRecord::Base
	has_paper_trail :only => [:academic_rank,  :faculty_status, :faculty_status2, :pagibig, :tbi, :department]

	has_many :children, :dependent => :destroy

	validates :last_name, :first_name, :presence => true

	accepts_nested_attributes_for :children, :reject_if => :all_blank, :allow_destroy => true

	def fullname
		"#{self.last_name}, #{self.first_name}"
	end
end
