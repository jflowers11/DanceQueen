json.array!(@class_styles) do |class_style|
  json.extract! class_style, :id, :user_id, :latin, :partner, :freestyle
  json.url class_style_url(class_style, format: :json)
end
