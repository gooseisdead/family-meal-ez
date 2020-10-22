class ApplicationController < ActionController::Base
    # before_action :chef_authorized?
    before_action :authorized?
    

    def logged_in_user?
        @current_employee = Employee.find_by(id: session[:employee_id])
    end

    # def chef_authorized?
    #     if logged_in_user?.job_title == "cook"
    #         redirect_to family_meals_path
    #     else
    #         authorized?
    #     end
    # end
    
    
    def authorized?
            redirect_to new_login_path unless logged_in_user?
    end


end
