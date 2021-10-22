Rails.application.routes.draw do
  post 'api/v1/vehicles/create', to: "vehicle#create"
  get 'api/v1/vehicles', to: "vehicle#index"
  post 'api/v1/gps', to: "gps_point#create", as: "new_point"
  get 'show', to: "gps_point#show"
end
