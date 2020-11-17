require 'spec_helper'

describe 'The index page of all authors' do
  before 'render page' do
    @alan = FactoryBot.create(:author)
    visit authors_path
  end
  it 'renders html table with name homepage and detailed page link' do
    assert_selector('table')
    assert_selector('th', text:'Name')
    assert_selector('th', text:'Homepage')
    assert_selector('th', text:'Link')
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
end