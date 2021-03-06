Rails.application.routes.draw do

  root "cocktails#index"
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails, only: [:show, :new, :create, :index], shallow: true do
    resources :doses, only: [:new, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




