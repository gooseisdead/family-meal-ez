class ApplicationController < ActionController::Base
    before_action :logged_in_user?

    def logged_in_user?
        @current_employee = Employee.find_by(id: session[:employee_id])
    end
    
end
