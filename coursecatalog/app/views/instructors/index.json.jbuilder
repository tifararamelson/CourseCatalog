json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :first_name, :last_name, :email
  json.url instructor_url(instructor, format: :json)
end
