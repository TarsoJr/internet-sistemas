require 'rails_helper'
RSpec.feature "adding classrooms" do 

  scenario "allow a user to add a classroom" do

    classroom = create(:classroom)

    visit classroom_path(classroom)


    expect(page).to have_content(1)
    expect(page).to have_content(2)
    expect(page).to have_content("2016-10-01 03:38:00")


  end
  
end