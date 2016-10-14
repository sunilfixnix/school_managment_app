class SubjectsController < ApplicationController

	def index
		@subject = Subject.all
	end

	def show
		@subject = Subject.find(params[:id])
	end

	def new

		@subject= Subject.new
	end

	def create

		@subject = Subject.new(subject_params)

		if @subject.save

			redirect_to subjects_path

		else

			render 'new'

		end

	end




	private

	def subject_params
		params.require(:subject).permit(:id, :name, :description, :credit, :teacher_id, :standard_id, :exam_id, :student_id, :result_id)
	end


end
