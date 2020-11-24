require 'rails_helper'

describe 'show papers page', type: :feature do
  before() do
    @author = Author.new(first_name: 'Gilbert', last_name: 'von Hotzenplotz', homepage: 'sexy_grannies.to')
    @other_author = Author.new(first_name: 'Recyp Tayik', last_name: 'von Bismark', homepage: 'ich-bin-kein-tuerke.de')
    @paper = Paper.create!(title: 'Sex in old age', venue: 'erotic shop around the corner', year: 2020, authors: [@author, @other_author])
  end
  it 'shows the contributing author' do
    visit paper_path(@paper)
    expect(page).to have_text(@author.name)
  end

end