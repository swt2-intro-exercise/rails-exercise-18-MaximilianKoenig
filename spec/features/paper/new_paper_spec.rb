require 'rails_helper'

describe "New paper page", type: :feature do

  it "should render without error" do
    visit new_paper_path
  end

  it "should show an error page containing what went wrong when any attribute is empty or year is not numeric" do
    visit new_paper_path

    page.fill_in 'paper[title]', with: ''
    page.fill_in 'paper[venue]', with: ''
    page.fill_in 'paper[year]', with: ''
    find('input[type="submit"]').click
    expect(page).to have_text("Title can't be blank")
    expect(page).to have_text("Venue can't be blank")
    expect(page).to have_text("Year can't be blank")
    expect(page).to have_text("Year is not a number")
  end

end