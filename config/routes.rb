Rails.application.routes.draw do
  resources :orders, index: [:index ]
  resources :tables, except: [:new, :edit] do
    resources :orders, only: [:create] do
      post :add, on: :member
      post :pay, on: :member
    end

  end
end
