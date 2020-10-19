class IngredientsController < ApplicationController
    before_action :find_ingredients, only: [:edit, :update, :show, :destory]

    def index
        @ingredients = Ingredient.all
    end

    def show
    end
    
private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :quality)
    end

    def find_ingredients
        @ingredient = Ingredient.find(params[:id])
    end
    
    
end
