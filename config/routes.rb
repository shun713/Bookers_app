Rails.application.routes.draw do
  root :to => "homes#top"
  get "books" => "books#index" ,as:"books"
  post "books" => "books#create"
  get "books/:id" => "books#show" ,as:"book_show"
  get "books/:id/edit" => "books#edit" ,as:"book_edit"
  patch "books/:id" => "books#update"
  delete "books/:id" => "books#destroy" ,as:"book_destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
