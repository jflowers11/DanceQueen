json.array!(@class_times) do |class_time|
  json.extract! class_time, :id, :user_id, :class_id, :time
  json.url class_time_url(class_time, format: :json)
end
