class StudentsController < ApplicationController
    def index 
        # byebug
        @students = Student.all 
    end

    def new
    @student = Student.new
    end 

    def create 
      @student = Student.new(params_data)
      if @student.save 
        redirect_to root_path 
      end
    end

    def show 
      @student = Student.find(params[:id])
    end

     private 
     def params_data 
        params.require(:student).permit(:first_name,:last_name,:address,:email,:dob)
     end
end
