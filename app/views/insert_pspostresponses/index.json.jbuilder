json.array!(@insert_pspostresponses) do |insert_pspostresponse|
  json.extract! insert_pspostresponse, :id, :insertid, :leftover, :postnote, :updatedby, :latetrucks
  json.url insert_pspostresponse_url(insert_pspostresponse, format: :json)
end
