Rails.application.routes.draw do
  root 'home#welcome'
  get '/welcome/:first_name', to: 'welcome#hello'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
end
