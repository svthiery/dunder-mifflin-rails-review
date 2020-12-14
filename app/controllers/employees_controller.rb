class EmployeesController < ApplicationController

    def index  
        @employees = Employee.all 
    end 
    
    def new 
        @employee = Employee.new 
    end 
    
    def show
        @employee = Employee.find(params[:id])
    end 
    
    def create 
        @employee = Employee.create(params_path)
        redirect_to employee_path(@employee)
    end 

    def edit
        @employee = Employee.find(params[:id])
    end
    
    def update
        @employee = Employee.find(params[:id])
       
        @employee.update(params_path)
        redirect_to employee_path(@employee)
    end 

    private

    def params_path
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end 
end