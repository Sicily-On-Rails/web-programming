require 'rails_helper'

RSpec.feature "Administrtor can create new lessons" do
  
  before do
    course = FactoryBot.create(:course, name: "Html 5")
    visit admin_course_path(course)
    click_link "New Lesson"
  end
  
  scenario "with valid attributes" do
    fill_in "Title", with: "Html 5"
    fill_in "Description", with: "Html5 description"

    expect(page).to have_content "Lesson has been created"
  end
end
