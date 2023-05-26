class Bill < ApplicationRecord
 validates_presence_of :EmID, :NameCus, :Phonenumber, :Product
 validates_length_of :Phonenumber, is: 9, message: "must be exactly 9 digits"
end
