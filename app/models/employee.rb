class Employee < ApplicationRecord

	validates_presence_of :EmID, :Name, :Phonenumber
	validates_uniqueness_of :EmID, :Phonenumber
	validates_length_of :Phonenumber, is: 9, message: "must be exactly 9 digits"
end
