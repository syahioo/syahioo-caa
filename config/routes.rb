Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'app#landing'
  post 'caa', to: 'qiscus#new_agent'
  get 'apps', to: 'app#index'
  post 'apps/register', to: 'app#register'
  get 'apps/queue/:app_code', to: 'app#queues'
end
