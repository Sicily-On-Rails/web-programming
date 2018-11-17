require "rails_helper"

RSpec.feature "Administrator can delete a course" do 
  scenario "successfully" do 
    FactoryBot.create(:course, name: "Ruby")

    visit "admin/courses"
    click_link "Ruby"
    click_link "Delete Course"

    expect(page).to have_content "Course has been deleted."
    expect(page.current_url).to eq admin_courses_url
    expect(page).to have_no_content "Ruby" 
  end
end
