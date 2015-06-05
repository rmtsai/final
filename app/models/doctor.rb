class Doctor < ActiveRecord::Base
	belongs_to :hospital	
	belongs_to :affiliations
	belongs_to :TypeofDoctor	
	has_many :messages

	validates :name, presence: true
  	validates :dob, presence: true
  	validates :education, presence: true
  	validates :specialty, presence: true
end
