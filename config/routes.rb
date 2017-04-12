Rails.application.routes.draw do
	
  # get 'reports/new'

  # get 'reports/create'

  resources :posts do
    resources :comments
  end
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  
  root to: 'welcomes#index'

  resources :welcomes, only: [:index, :about]

  get "/about" => "welcomes#about", as: "about"


  resources :posts do
    member do
      put 'like'
      put 'unlike'
    end
  end

  post '/report' => 'posts#report', as: "report"

  resources :reports, only: [:new, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
