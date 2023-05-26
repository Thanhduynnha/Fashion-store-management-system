class Bill < ApplicationRecord
	
	has_and_belongs_to_many :dresses
	has_and_belongs_to_many :pants
	has_and_belongs_to_many :skirts
	has_and_belongs_to_many :t_shirts
 validates_presence_of :EmID, :NameCus, :Phonenumber, :Product
 validates_uniqueness_of :Phonenumber
 validates_length_of :Phonenumber, is: 9, message: "must be exactly 9 digits"
end
