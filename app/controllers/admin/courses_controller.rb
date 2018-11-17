class Admin::CoursesController < Admin::BaseController
  before_action :set_course, only:  [:show, :edit, :update, :destroy]  

  def index
    @courses = Course.all
  end

  def show 
  end

  def new
    @course = Course.new
  end
    
  def edit
  end
  
  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course has been created." 
      redirect_to [:admin, @course]
    else
      #
    end  
  end
  
  def update
    if @course.update(course_params)
      flash[:notice] = "Course has been updated"
      redirect_to [:admin, @course]
    else
      flash[:danger] = "Course has not been updated"
    end
  end
  
  def destroy
  end
  
  private
  
  def set_course
    @course = Course.find(params[:id])
  end
  
  def course_params
    params.require(:course).permit(:name, :descritpion)
  end 

  
end
