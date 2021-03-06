require 'rails_helper'

describe "Author details page", type: :feature do

    it "should should show the details of the author" do
        @author = FactoryBot.create :author
        visit author_path(@author)

        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    end
end