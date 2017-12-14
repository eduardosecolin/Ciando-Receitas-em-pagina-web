module RecipesHelper

   #metodo qur formata a caloria
   def formata_caloria(recipe)
    if recipe.light?
        content_tag(:strong , "Light (menos de 100 calorias)")
    else    
      recipe.calories
    end
   end

end
