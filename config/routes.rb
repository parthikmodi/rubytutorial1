Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "posts#index"
  get 'posts', to: "posts#index"
  get 'posts/new', to: "posts#new"
  get 'posts/:id/edit', to: "posts#edit_post", as: :edit
  patch 'posts/:id', to: "posts#update"
  delete 'posts/:id', to: "posts#delete", as: :posts_delete
  get 'posts/:id', to: "posts#show_post", as: :post
  post 'posts', to:"posts#create"
end
