Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'

  devise_for :customers

  resources :items, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
  end

  resources :customers, only: [:show, :edit, :update]
  get 'customers/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
  patch 'customers/withdraw' => 'customers#withdraw', as: 'withdraw'

  resources :cart_items, only:[:index, :update, :destroy, :create]
  delete 'cart_items/all_destroy' => 'cart_items#all_destroy', as: 'all_destroy'

  resources :orders, only:[:new, :create, :index, :show]
  post 'orders/confirm' => 'orders#confirm', as: 'confirm'
  get 'orders/complete' => 'orders#complete'

  resources :contacts, only:[:new, :create]
  get 'contacts/complete' => 'contacts#complete'

end
