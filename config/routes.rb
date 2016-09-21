Rails.application.routes.draw do
  get 'inquiry/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'static_pages#home'
   get 'step' => 'static_pages#step'
   get 'inquiry' => 'inquiry#index'
   post 'inquiry/confirm' => 'inquiry#confirm'
   post 'inquiry/thanks' => 'inquiry#thanks'
end