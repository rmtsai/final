class Doctor < ActiveRecord::Base
	belongs_to :hospital	
	belongs_to :affiliations
	belongs_to :TypeofDoctor	

end
