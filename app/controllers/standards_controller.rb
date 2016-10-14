class StandardsController < ApplicationController
	def index
		@standard = Standard.all
		
	end

	def show
		@standard =Standard.find(params[:id])
		@section = @standard.sections
		@subject = @standard.subjects

	end

	def new

		@standard = Standard.new
	end

	def create
		@standard = Standard.new(standard_params)

		unless @standard.save

			redirect_to standard_path

		else

			render 'new'
		end

	end

	def edit

		@standard = Standard.find(params[:id])

	end


	def update 
		@standard = Standard.find(params[:id])

		if @standard.update_attributes(standard_params)
			redirect_to(:action => 'show', :id => @standard.id) 
  else 
    render 'edit' 
  end 



	end




	private

	def standard_params
		params.require(:standard).permit(:id, :name, :school_id)
	end


end
