Rails.application.routes.draw do
  # criando rotas(routers), com o controler e indice
  # get "recipes" => "recipes#index"    ou
  resources :recipes 
end
