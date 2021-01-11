Rails.application.routes.draw do
  get '/questions', to: 'questions#index'
  get '/questions/most_accessed/:period', to: 'questions#most_accessed'
  get '/disciplines/hot_questions', to: 'questions#hot_subjects'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
