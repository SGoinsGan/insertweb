json.array!(@insert_conditions) do |insert_condition|
  json.extract! insert_condition, :id, :conditionname, :responsecode
  json.url insert_condition_url(insert_condition, format: :json)
end
