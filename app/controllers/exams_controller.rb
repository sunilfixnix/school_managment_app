class ExamsController < ApplicationController
	def index
		@exam = Exam.all
	end

	def show
		@exam = Exam.find(params[:id])
	end

	def new

		@exam = Exam.new
	end

	def create 

		@exam = Exam.new(exam_params)

		if @exam.save

			redirect_to exams_path

		else
			render 'new'

		end
	end



	private

	def exam_params
		params.require(:exam).permit(:id, :name, :start_date, :end_date, :standard_id, :subject_id, :section_id)

	end

end
