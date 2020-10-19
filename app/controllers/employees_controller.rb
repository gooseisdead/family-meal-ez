class EmployeesController < ApplicationController
    before_action :find_employees, only: [:edit, :update, :show, :destory]

    def index
        @employees = Employee.all
    end

    def show
    end
    
private

    def employee_params
        params.require(:employee).permit(:name, :job_title, :shift)
    end

    def find_employees
        @employee = Employee.find(params[:id])
    end
    
end
