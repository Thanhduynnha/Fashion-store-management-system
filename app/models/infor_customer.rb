class InforCustomer < ApplicationRecord
	
	validates_uniqueness_of :Phonenumber
	validates_length_of :Phonenumber, is: 9, message: "must be exactly 9 digits"
end
