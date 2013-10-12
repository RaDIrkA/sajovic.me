json.array!(@blogs) do |blog|
  json.extract! blog, :naslov, :opis
  json.url blog_url(blog, format: :json)
end
