class SchoolsController < ApplicationController

	def index

		@school = School.all
		
	end

	def show
		@school = School.find(params[:id])
		@standard = @school.standards
	end

	def new
		@school = School.new

	end

	def create

		 @school = School.new(school_params) 
  if @school.save 
  	 SchoolMailer.sample_email(@school).deliver
    redirect_to schools_path 
  else 
    render 'new' 
  end 

	end

	def edit
		 @school = School.find(params[:id]) 

	end

	def update

     @school = School.find(params[:id]) 
  if @school.update_attributes(school_params) 
    redirect_to schools_path

    #redirect_to '/schools'
  else 
    render 'edit' 
  end 

	end


private 

  def school_params 
    params.require(:school).permit(:id, :name, :address, :team, :course_offer, :email) 
  end

end
