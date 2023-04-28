class ShoppingsController < ApplicationController
  
    def show
        @recipe = Recipe.includes(:recipe_food).find(params[:recipe_id])
        @ingredients = @recipe.recipe_food.where(recipe: @recipe)
    end
  
  end
  