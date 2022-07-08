Rails.application.routes.draw do
  
  get 'posts/index'
  get 'users/show'
  get 'rooms/index'
  get 'pages/index'
  
  resources :posts
  resources :rooms
  resources :pages
  
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
} 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "pages#index"

  devise_scope :user do
    
    get "signup", :to => "users/registrations#new" #あたしく新規登録するとき
    
    get 'users/:id' => 'users#show' #アカウントを見るとき
    
    get "update" , :to => "users/registrations#edit" #プロフィールを編集するとき
    
    get "login", :to => "users/sessions#new" #ログインするとき
    
    get "logout", :to => "users/sessions#destroy" #ログアウトする時
    
    
  end
end
