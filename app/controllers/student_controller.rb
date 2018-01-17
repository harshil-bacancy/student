class StudentController < ApplicationController
	def index
    @student = StudentModel.all
	end

	def new
    @student = StudentModel.new
	end

	def create
    # render plain: student_params.inspect
    @student = StudentModel.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render 'new'
    end
	end

  def edit
    @student = StudentModel.find(params[:id])
  end

  def show
    @student = StudentModel.find(params[:id])
  end

  def update
    @student = StudentModel.find(params[:id])
  
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  def destroy
    @student = StudentModel.find(params[:id])
    @student.destroy
    redirect_to student_index_path
  end

  private
    def student_params
      params.require(:student).permit(:title, :mail, :mobile, :password, :password_confirmation)
    end
end
