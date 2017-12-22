class RecipesController < ApplicationController
   # os metodos criados são acitions

   # metodo que retorna o indice das receitas
    def index
      @recipes = Recipe.created_at
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
      if @recipe.update(recipe_param)
        redirect_to @recipe
      else
        render :edit
      end  
   end

   # metodo para criar uma nova receita
   def new
      @recipe = Recipe.new
   end
   
   # metodo para armazenar os dados da nova recieta no banco de dados 
   def create
      @recipe = Recipe.new(recipe_param)
      if @recipe.save
        redirect_to @recipe
      else
        render :new
      end  
   end

   # metodo para deletar uma receita
   def destroy
     @recipe = Recipe.find(params[:id])
     @recipe.destroy
     redirect_to recipes_url
   end

   # metodo de reaproveitamento de código da permissão para edição e criação de receitas
   private def recipe_param
    params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost, 
                   :kind, :duration, :portion, :poster)
   end

end
