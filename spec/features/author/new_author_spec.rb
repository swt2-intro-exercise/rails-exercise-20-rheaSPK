require 'rails_helper'

describe "New authors page", type: :feature do

  it "should render withour error" do
    visit new_authors_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_authors_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

end