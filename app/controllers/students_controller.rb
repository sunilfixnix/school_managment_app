class StudentsController < ApplicationController
	def index
		@student = Student.all
	end

	def show
		@student = Student.find(params[:id])


		@subject = @student.subjects

		@result = @student.results
	end

		def new
		@student = Student.new

	end

	def create

		 @student = Student.new(student_params) 
  if @student.save 
    redirect_to students_path
  else 
    render 'new' 
  end 

	end

	def edit

		@student = Student.find(params[:id])

	end


	def update

				@student = Student.find(params[:id])

			if @student.update_attributes(student_params)

				 redirect_to(:action => 'edit', :id => @student.id) 
  else 

    render 'edit' 
    
  end 

	end



	private

	def student_params
		params.require(:student).permit(:id, :first_name, :last_name, :age, :email_id, :phone_no, :address, :section_id)
	end
end
