require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render without error" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
  end
end