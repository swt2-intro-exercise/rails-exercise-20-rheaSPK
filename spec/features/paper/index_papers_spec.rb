#require 'spec-helper'

describe 'index paper page', type: :feature do
  before do
    @paper = Paper.create!(title: 'Sex in old age', venue: 'erotic shop around the corner', year: 2020, authors: [])
    @other_paper = Paper.create!(title: 'Er ist immer noch da', venue: 'Antireichsparteitag', year: 1942, authors: [])
  end

  it 'filters authors by year' do
    visit papers_path(:year => "2020")
    expect(page).not_to have_text @other_paper.title
  end
end