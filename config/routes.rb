Rails.application.routes.draw do
  get '/search', :to => 'main#search'

  root :to => "main#index"
end
