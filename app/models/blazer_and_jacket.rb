class BlazerAndJacket < ApplicationRecord
	has_and_belongs_to_many :bill_details
	validates_presence_of :Fullname,:Description,:Price,:Url
	validates_uniqueness_of :Fullname, :Url 

end
