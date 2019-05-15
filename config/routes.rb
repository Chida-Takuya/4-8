Rails.application.routes.draw do
	root :to => 'posts#top'
	get 'index' => 'posts#index'
	get 'posts' => 'posts#index'
	post 'posts/:id' => 'posts#show', as: 'post'
    delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
	resources :posts
end
