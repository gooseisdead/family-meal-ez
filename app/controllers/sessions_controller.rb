class SessionsController < ApplicationController

    def logout
       session.delete(:employee_id)
       redirect_to new_employee_path 
    end

    def new_login

    end

    def login
        @employee = Employee.find_by(name: params[:session][:name])

        if @employee && @employee.authenticate(params[:session][:password])
            session[:employee_id] = @employee.id
            redirect_to family_meals_path
        else 
            flash[:login_error] = "Incorrect Name or Password"
            redirect_to new_login_path
        end
    end
end
    