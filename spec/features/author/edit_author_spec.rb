require 'spec_helper'

describe 'Edit page for an author' do
  before 'create a dummy author' do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
  end

  it "should have text inputs for an authors's first name, last name, and homepage" do
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it 'saves changes for an existing author' do
    page.fill_in 'author[first_name]', with: 'Philipp'
    page.fill_in 'author[last_name]', with: 'Naumann'
    page.fill_in 'author[homepage]', with: 'HPI.de'
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.first_name).to eq 'Philipp'
  end

end