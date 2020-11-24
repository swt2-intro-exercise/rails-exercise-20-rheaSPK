require 'rails_helper'

describe 'New papers page', type: :feature do
  before 'render page' do
    @gilbert = Author.create!(first_name: 'Gilbert', last_name: 'von Hotzenplotz', homepage: 'sexy_grannies.to')
    @otto = Author.create!(first_name: 'Otto', last_name: 'von Bismark', homepage: 'kaiser.reich')
    @paper = Paper.create!(title: 'Sex in old age', venue: 'erotic shop around the corner', year: 2020, authors: [])
    visit edit_paper_path(@paper)
  end

  it 'has an author selector' do
    assert_selector('select[multiple]')
  end

  it 'saves authors for that page' do
    select = page.find('select[multiple]')
    select @gilbert.name
    select @otto.name
    find('input[type="submit"]').click
    @paper.reload
    expect(@paper.authors).to include @otto
    expect(@paper.authors).to include @gilbert
  end
end