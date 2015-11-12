Rails.application.routes.draw do
  resources :orders, index: [:index ]
  resources :tables, except: [:new, :edit] do
    resources :orders, only: [:create] do
      post :add, on: :member
    end

  end
end
