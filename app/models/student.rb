class Student < ActiveRecord::Base

def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
  end

  private
    def student_params
      params.require(:student).permit(:name, :question, :description)
    end
end