class CoursesController < ApplicationController

  def index
    @courses = [ 'Html5', 'Css3', 'Javascript', 'Ruby On Rails', 'Ruby']
  end


  def html5
    @course = "Html5"
  end

  def ruby_on_rails
    @course = "Ruby on Rails"
  end

end
