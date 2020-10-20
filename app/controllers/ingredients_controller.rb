class IngredientsController < ApplicationController
    before_action :find_ingredients, only: [:edit, :update, :show, :destroy]

    def index
        @ingredients = Ingredient.all
    end

    def show
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
        if @ingredient.valid?
          flash[:success] = "Ingredient successfully created"
          redirect_to ingredients_path
        else
          flash[:errors] = @ingredient.errors.full_messages
          redirect_to new_ingredient_path
        end
    end

    


    
private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :quality)
    end

    def find_ingredients
        @ingredient = Ingredient.find(params[:id])
    end
    
    
end
