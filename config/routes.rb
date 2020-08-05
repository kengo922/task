Rails.application.routes.draw do
  root to: 'teachers#index'
  get 'search', to: 'teachers#search'
end
