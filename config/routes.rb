Rails.application.routes.draw do
  get 'stories/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :stories, only: [:index, :show, :update, :create]
    end
  end

end
