class EmployeesController < ApplicationController
    before_action :find_employees, only: [:edit, :update, :show, :destroy]
    # before_action :chef_check
    skip_before_action :authorized?, only: [:new, :create]


    def index
        @employees = Employee.all
    end

    def show
    end
    
    def new
        @employee = Employee.new
    end
    

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
          session[:employee_id] = @employee.id
          flash[:success] = "Employee successfully created"
          redirect_to employees_path
        else
          flash[:errors] = @employee.errors.full_messages
          redirect_to new_employee_path
        end
    end

    def edit
    end

    def update
        if @employee.update(employee_params)
          flash[:success] = "Family Meal was successfully updated"
          redirect_to employee_path(@employee)
        else
          flash[:errors] = @employee.errors.full_messages
          redirect_to edit_employee_path
        end
    end
    
private

    def employee_params
        params.require(:employee).permit(:name, :password, :job_title, :shift)
    end

    def find_employees
        @employee = Employee.find(params[:id])
    end
    
    def chef_check
      if @current_employee.job_title != "chef"
          redirect_to family_meals_path
      end
  end

end
