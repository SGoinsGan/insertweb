json.array!(@insert_pubs) do |insert_pub|
  json.extract! insert_pub, :id, :pub_code, :pub_name, :ams_pub_code, :cci_product, :cci_zone, :cci_edition, :text_active, :page_format_id, :active, :create_by, :updated_by
  json.url insert_pub_url(insert_pub, format: :json)
end
