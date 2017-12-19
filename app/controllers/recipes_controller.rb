class RecipesController < ApplicationController
   # os metodos criados são acitions

   # metodo que retorna o indice das receitas
    def index
      @recipes = Recipe.all
    end
   
   # metodo que mostra a receita em outra janela através de um link
    def show
      @recipe = Recipe.find(params[:id])
    end
   
   # metodo para editar um a receita através de um link 
    def edit
      @recipe = Recipe.find(params[:id])
    end

   # metodo para atualizar a recita editada
   def update
      @recipe = Recipe.find(params[:id])
      recipe_param = params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost)
      @recipe.update(recipe_param)
      redirect_to @recipe
   end

   # metodo para criar uma nova receita
   def new
      @recipe = Recipe.new
   end
   
   # metodo para armazenar os dados da nova recieta no banco de dados 
   def create
      recipe_param = params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost)
      @recipe = Recipe.new(recipe_param)
      @recipe.save
      redirect_to @recipe
   end

   # metodo para deletar uma receita
   def destroy
     @recipe = Recipe.find(params[:id])
     @recipe.destroy
     redirect_to recipes_url
   end

end
