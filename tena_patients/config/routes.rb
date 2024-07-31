Rails.application.routes.draw do
  resources :prescriptions
  resources :patients
  mount TenaDcms::Engine => '/tena_dcms'
  resources :doctors
  get 'up' => 'rails/health#show', as: :rails_health_check
end
