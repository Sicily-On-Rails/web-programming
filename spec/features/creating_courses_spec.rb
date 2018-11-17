require "rails_helper"

RSpec.feature "Administrator can create new course" do
  scenario "with valid attributes" do
    visit "/admin/courses"
  
    click_link "New Course"
    fill_in "Name", with: "Ruby"
    fill_in "Description", with: "Dynamic language"
    click_button "Create Course"
    expect(page).to have_content "Course has been created."
  end
end
