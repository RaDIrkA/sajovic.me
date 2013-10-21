json.array!(@works) do |work|
  json.extract! work, :content
  json.url work_url(work, format: :json)
end
