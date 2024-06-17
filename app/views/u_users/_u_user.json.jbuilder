json.extract! u_user, :id, :full_name, :email, :password, :created_at, :updated_at
json.url u_user_url(u_user, format: :json)
