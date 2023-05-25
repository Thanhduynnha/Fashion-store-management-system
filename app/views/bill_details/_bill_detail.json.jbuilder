json.extract! bill_detail, :id, :EmID, :NameCus, :Phonenumber, :Product, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)
