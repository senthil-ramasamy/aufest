json.array!(@registers) do |register|
  json.extract! register, :id, :fname, :lname, :email, :contactno, :collegename, :coladdress, :city, :state, :pincode, :fphydirname, :lphydirname, :pdcontact, :sports, :menwomen, :singdouble, :accepted
  json.url register_url(register, format: :json)
end
