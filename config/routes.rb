Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/prog", to: "prog#index"
  post "/prog", to: "prog#create"
  get "/prog", to: "prog#create"
end

