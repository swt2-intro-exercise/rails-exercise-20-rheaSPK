require 'rails_helper'

describe "show authors page", type: :feature do
  it 'shows the detail of an author' do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text(@alan.first_name)
    expect(page).to have_text(@alan.last_name)
    expect(page).to have_text(@alan.homepage)
  end

end