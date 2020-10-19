class FamilyMealsController < ApplicationController
    before_action :find_family_meals, only: [:edit, :update, :show, :destory]

    def index
        @family_meals = FamilyMeal.all
    end

    def show
    end

    def new
        @family_meal = FamilyMeal.new
    end
    

    def create
        @family_meal = FamilyMeal.create(family_meal_params)
        if @family_meal.valid?
          flash[:success] = "Family Meal successfully created"
          redirect_to family_meals_path
        else
          flash[:errors] = @family_meal.errors.full_messages
          redirect_to new_family_meal_path
        end
    end

    def edit
    end

    def update
        if @family_meal.update(family_meal_params)
          flash[:success] = "Family Meal was successfully updated"
          redirect_to family_meal_path(@family_meal)
        else
          flash[:errors] = @family_meal.errors.full_messages
          redirect_to edit_family_meal_path
        end
    end
    
    
    
    
private

    def family_meal_params
        params.require(:family_meal).permit(:recipe_id, :employee_id, :shift)
    end

    def find_family_meals
        @family_meal = FamilyMeal.find(params[:id])
    end
    
end
