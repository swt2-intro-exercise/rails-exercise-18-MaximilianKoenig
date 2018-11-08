require 'rails_helper'

describe "Paper details page", type: :feature do

  it "should should show the details of the paper" do
    @author = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)

    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
  end
end