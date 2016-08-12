Rails.application.routes.draw do
  resources :profiles do
     collection {post:import}
  end

  #root 'application#goodbye'
  root to: 'profiles#index'
end
