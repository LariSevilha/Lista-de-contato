json.extract! formulario, :id, :name, :email, :phone, :cell, :icon, :company, :created_at, :updated_at
json.url formulario_url(formulario, format: :json)
