require 'rails_helper'

describe "New authors page", type: :feature do
  before "render page" do
    visit new_author_path
  end

  it "should have text inputs for an authors's first name, last name, and homepage" do
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should create a new author" do
    page.fill_in 'author[first_name]', with: 'Philipp'
    page.fill_in 'author[last_name]', with: 'Naumann'
    page.fill_in 'author[homepage]', with: 'HPI.de'
    find('input[type="submit"]').click
    expect(Author.count).to eq 1
  end

  it "should show a validation error" do
    page.fill_in 'author[first_name]', with: 'Felix'
    page.fill_in 'author[homepage]', with: 'zu/cool/fuer/nen/namen'
    find('input[type="submit"]').click
    assert_selector('#error_explanation')
  end

end