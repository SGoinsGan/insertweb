json.array!(@insert_psresponses) do |insert_psresponse|
  json.extract! insert_psresponse, :id, :lookupid, :insertid, :receiveddate, :conditionid, :quantityrec, :receivednote, :receivedby, :updatedby
  json.url insert_psresponse_url(insert_psresponse, format: :json)
end
