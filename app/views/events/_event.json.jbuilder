json.extract! event, :id, :image, :title, :date, :time, :location, :description, :limit, :attendees, :created_at, :updated_at
json.url event_url(event, format: :json)
