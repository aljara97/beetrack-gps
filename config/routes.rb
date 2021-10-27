Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post 'api/v1/vehicles/create', to: "vehicle#create"
  get 'api/v1/vehicles', to: "vehicle#index"
  get 'api/v1/gps_points', to: "gps_point#index"
  post 'api/v1/gps', to: "gps_point#create", as: "new_point"
end
