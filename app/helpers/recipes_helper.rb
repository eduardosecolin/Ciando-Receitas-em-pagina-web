module RecipesHelper

   #metodo qur formata a caloria
   def formata_caloria(recipe)
    if recipe.light?
        content_tag(:strong , "Light (menos de 100 calorias)")
    else    
      recipe.calories
    end
   end

   #metodo para mostrar a imagem vazia
   def imagem(recipe)
    if recipe.poster.blank?
      image_tag('sem_imagem.jpeg')
    else
      image_tag(recipe.poster)
    end
  end
  
end
