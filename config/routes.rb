Rails.application.routes.draw do
  get 'question/index'
  get 'main/index'
  devise_for :users

  resources :chatrooms do
  	resource :chatroom_users
  end
  root to: 'main#index'
  # scaffolding을 chatroom으로 해놓았기 때문에 root로 설정
  

end
