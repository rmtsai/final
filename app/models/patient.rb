class Patient < ActiveRecord::Base
	belongs_to :hospital	
	belongs_to :affiliations
	belongs_to :doctor

	has_many :messages	

end
