require 'rails_helper'

RSpec.feature "Admin can view courses" do 
  scenario "with the course detail" do
    course = FactoryBot.create(:course, name: "Ruby")

    visit "admin/courses"
    click_link "Ruby"
    expect(page.current_url).to eq admin_course_url(course)
  end
end

