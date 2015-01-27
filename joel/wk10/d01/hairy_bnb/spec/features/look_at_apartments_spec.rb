require 'rails_helper'

feature "LookAtApartments", :type => :feature do
  scenario "when there are no apartments" do
    visit '/'
    expect(page).to have_content("No apartments available")
  end

  scenario "when there are apartments" do
    apartments_one = create(:apartment)
    apartments_two = create(:apartment)

    visit '/'

    expect(page).to have_content(apartments_one.title)
    expect(page).to have_content(apartments_two.title)
    expect(page).to_not have_content("No apartments available")
  end
end
