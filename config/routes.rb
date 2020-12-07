Rails.application.routes.draw do
  root :to => 'books#top'
  get "books" => "books#home"
  post "books" => "books#create"
  get "books/:id" => "books#show", as: "book"
  get "books/:id/edit" => "books#edit", as: "edit_book"
  patch "books/:id" => "books#update", as: "update_book"
  delete "books/:id" => "books#destroy", as: "delete_book"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
