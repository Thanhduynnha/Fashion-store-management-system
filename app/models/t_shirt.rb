class TShirt < ApplicationRecord
	validates_presence_of :Fullname,:Description,:Price,:Url
	validates_uniqueness_of :Fullname, :Url 
end
