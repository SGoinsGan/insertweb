json.array!(@insert_printmethods) do |insert_printmethod|
  json.extract! insert_printmethod, :id, :methodname
  json.url insert_printmethod_url(insert_printmethod, format: :json)
end
