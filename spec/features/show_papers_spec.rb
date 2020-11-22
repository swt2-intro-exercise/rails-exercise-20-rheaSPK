require 'rails_helper'

describe 'show papers page', type: :feature do
  it 'shows the contributing author' do
    @author = Author.new(first_name: 'Gilbert', last_name: 'von Hotzenplotz', homepage: 'sexy_grannies.to')
    @paper = Paper.create!(title: 'Sex in old age', venue: 'erotic shop around the corner', year: 2020, authors: [@author])
    visit paper_path(@paper)
    expect(page).to have_text(@author.name)
  end

end