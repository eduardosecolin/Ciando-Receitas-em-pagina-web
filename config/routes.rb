Rails.application.routes.draw do
  #avisando o heroku da minha aplicação
  root 'recipes#index'
  # criando rotas(routers), com o controler e indice
  # gt "recipes" => "recipes#index"    ou
  # também dizendo que os comentários precisam de uma receita
  resources :recipes do
    resources :comments
  end
end
