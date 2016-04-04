json.array!(@bakers) do |baker|
  json.extract! baker, :id, :firstname, :lastname, :description, :address
  json.url baker_url(baker, format: :json)
end
