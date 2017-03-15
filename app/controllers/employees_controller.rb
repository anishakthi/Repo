class EmployeesController < ApplicationController
	def new 
	end

	def index
	@employee = Employee.all
	end

	def show
		@employee = Employee.find(params[:id]) 
	end

	# Action method to Add Employee
	def create 

		@employee = Employee.new(add_employee_request)

		# returns boolean 
		@employee.save
		redirect_to @employee
	end

	def add_employee_request
		params.require(:employee).permit(:name, :doj, :status, :dob)
	end

end
