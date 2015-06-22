json.array!(@distributions) do |distribution|
  json.extract! distribution, :id, :lookup_id, :level_number, :distribution_code, :description, :newspaper_name, :parent_lookup_id, :sort, :text_active, :active_date, :inactive_date, :pub_id, :parent_id, :acitve, :created_at, :updated_at, :created_by, :updated_by, :address
  json.url distribution_url(distribution, format: :json)
end
