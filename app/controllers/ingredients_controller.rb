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
          redirect_to ingredient_path(@ingredient)
        else
          flash[:errors] = @ingredient.errors.full_messages
          redirect_to new_ingredient_path
        end
    end

    def edit
    end

    def update
        if @ingredient.update(ingredient_params)
          flash[:success] = "Ingredient was successfully updated"
          redirect_to ingredient_path(@ingredient)
        else
          flash[:errors] = @ingredient.errors.full_messages
          redirect_to edit_ingredient_path
        end
    end

    


    
private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :quality, :category)
    end

    def find_ingredients
        @ingredient = Ingredient.find(params[:id])
    end
    
    
end
