json.extract! microposts2, :id, :message, :user_id, :created_at, :updated_at
json.url microposts2_url(microposts2, format: :json)