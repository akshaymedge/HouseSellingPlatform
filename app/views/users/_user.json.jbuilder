json.extract! user, :id, :email, :name, :password, :role, :companyid, :phone, :contactmethod, :created_at, :updated_at
json.url user_url(user, format: :json)
