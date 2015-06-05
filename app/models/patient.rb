class Patient < ActiveRecord::Base
belongs_to :hospital	
	belongs_to :affiliations
	belongs_to :doctor	

end
