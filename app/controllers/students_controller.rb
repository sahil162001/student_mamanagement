class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]
    def index 
        # byebug
        @students = Student.find_each
    end

    def new
    @student = Student.new
    end 

    def create
      @student = Student.new(params_data)
      if @student.save 
        AccountCreationJob.set(wait: 1.minutes).perform_later(@student)
        redirect_to students_path , notice: "student has been created"
      else 
        render "new"
      end
    end
    
    def edit
    end

    def show 
    end

    def update 
      if @student.update(params_data)
        redirect_to student_path 
      else
        redirect_to edit_student_path 
      end
    end

    def destroy
      @student.destroy 
      redirect_to root_path, notice: "student has been deleted"
    end

     private 
     def params_data 
        params.require(:student).permit(:first_name,:last_name,:address,:email,:dob)
     end

     def set_student 
      @student = Student.find(params[:id])
     end
end
