Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/phones" => "phones#get_phone"
  post "/phones/:number" => "phones#custom_phone"
  get "/phones" => "phones#show"
end
