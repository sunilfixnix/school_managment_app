class AttendancesController < ApplicationController
	def index
		@attendance = Attendance.all
	end

	def show
		@attendance = Attendance.find(params[:id])
	end

	def new

		@attendance = Attendance.new
	end

	def create

		@attendance = Attendance.new(attendance_params)

		if @attendance.save

			redirect_to attendances_path

		else
			render 'new'

		end

	end


	private

	def attendance_params

		params.require(:attendance).permit(:id, :status, :student_id)

	end
end
