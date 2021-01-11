Rails.application.routes.draw do
  get '/questions', to: 'questions#index'
  get '/questions/most_accessed/:period', to: 'questions#most_accessed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
