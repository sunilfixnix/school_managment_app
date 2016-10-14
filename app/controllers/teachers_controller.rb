class TeachersController < ApplicationController
	def index
		@teacher = Teacher.all
		
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def new
		@teacher = Teacher.new
	end

	def create

		@teacher = Teacher.new(teacher_params)

		if @teacher.save

			redirect_to teachers_path

		else
			render 'new'

	end
end



	private

	def teacher_params
		params.require(:teacher).permit(:id, :first_name, :last_name, :age, :email_id, :phone_no, :address, :area_of_expertise, :qualification, :experience, :standard_id)
	end



end
