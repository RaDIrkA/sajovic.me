json.array!(@projects) do |project|
  json.extract! project, :content
  json.url project_url(project, format: :json)
end
