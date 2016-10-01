require 'rails_helper'
RSpec.feature "adding classrooms" do 

  scenario "allow a user to add a classroom" do

    course = create(:course)

    visit course_path(course)

    expect(page).to have_content("Matemática I")
    expect(page).to have_content("Matemática aplicada")
    expect(page).to have_content(1)


  end
  
end