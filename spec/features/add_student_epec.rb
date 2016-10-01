require 'rails_helper'
RSpec.feature "adding students" do 

  scenario "allow a user to add a student" do
    
    student = create(:student, name: "Thor")

    visit student_path(student)

    expect(page).to have_content("Thor")
    expect(page).to have_content("54324")
    expect(page).to have_content(1)


  end

end