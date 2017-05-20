Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get 'products' => 'products#index'
  get 'welcome' => 'welcome#index'
  get 'about' => 'welcome#about'
  get 'how' => 'welcome#how'
  get 'branch' => 'welcome#branch'

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :products do
    member do
      post :add_to_cart
    end
    collection do
      get :search
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :payment_with_alipay
      post :payment_with_wechat
      post :apply_to_cancel
    end
  end

  namespace :admin do
    resources :products do
     member do
       post :move_up
       post :move_down
     end
    end
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end

  namespace :account do
    resources :orders
  end

end
