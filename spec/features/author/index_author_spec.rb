require 'spec_helper'

describe 'The index page of all authors' do
  before 'render page' do
    @alan = FactoryBot.create(:author)
    visit authors_path
  end
  it 'renders html table with name homepage, detailed page link and edit link' do
    assert_selector('table')
    assert_selector('th', text:'Name')
    assert_selector('th', text:'Homepage')
    assert_selector('th', text:'Link')
    assert_selector('th', text:'Edit')
  end

  it 'renders a link for a new author' do
    expect(page).to have_link 'New', href: new_author_path
  end

  it 'shows the correct name and homepage' do
    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
  end

  it 'links to the correct detail page' do
    expect(page).to have_link 'Details', href: author_path(@alan)
  end

  it 'links to the correct edit page' do
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end
end