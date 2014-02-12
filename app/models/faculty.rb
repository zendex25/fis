class Faculty < ActiveRecord::Base
	has_many :children, :dependent => :destroy

	validates :last_name, :first_name, :presence => true

	accepts_nested_attributes_for :children, :allow_destroy => true

	def fullname
		"#{self.last_name}, #{self.first_name}"
	end
end
