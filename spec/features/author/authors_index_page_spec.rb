require 'rails_helper'

describe "Authors index page", type: :feature do

    it "should have a link to add new authors and list all authors with their names and homepages and the link to their detail page" do
        author = FactoryBot.create :author
        visit authors_path

        expect(page).to have_link 'New Author', href: new_author_path
        expect(page).to have_text("#{author.name}")
        expect(page).to have_text("#{author.homepage}")
        expect(page).to have_link 'Details', href: author_path(author)
    end
    
end