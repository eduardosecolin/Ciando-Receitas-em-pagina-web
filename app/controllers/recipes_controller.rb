class RecipesController < ApplicationController
   
    def index
      @recipes = ['Strogonofe', 'Filé de Frango a Parmegiana', 'Salmão ao Forno', 'Bacalhau ao Forno']
    end
end
