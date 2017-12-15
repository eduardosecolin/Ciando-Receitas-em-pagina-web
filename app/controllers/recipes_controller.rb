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
end
