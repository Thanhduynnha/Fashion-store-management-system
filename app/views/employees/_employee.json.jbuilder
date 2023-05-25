json.extract! employee, :id, :EmID, :Name, :Dob, :Hometown, :Phonenumber, :Email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
