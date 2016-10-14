class ResultsController < ApplicationController
	def index
		@result = Result.all 
	end

	def show
		@result = Result.find(params[:id])


	end

	def new

		@result = Result.new
	end

	def create

		@result = Result.new(result_params)

		if @result.save

			redirect_to results_path

		else
			render 'new'

		end
	end


	private

	def result_params

		params.require(:result).permit(:id, :status, :marks, :division, :subject_id, :student_id, :standard_id, :exam_id)
	end

end
