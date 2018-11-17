require "rails_helper"

RSpec.feature "Amdministator can edit existing course" do
  scenario "with valid attributes" do
    FactoryBot.create(:course, name: "Ruby") 
    
    visit "admin/courses"
    
    click_link "Ruby"
    click_link "Edit Course"

    fill_in "Name", with: "Ruby 2.6 beta"
    click_button "Update Course"

    expect(page).to have_content "Course has been updated"
    expect(page).to have_content "Ruby 2.6 beta"


  end
end
