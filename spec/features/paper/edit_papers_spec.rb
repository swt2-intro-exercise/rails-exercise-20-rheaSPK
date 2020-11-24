require 'rails_helper'

describe 'New papers page', type: :feature do
  before 'render page' do
    @author = Author.new(first_name: 'Gilbert', last_name: 'von Hotzenplotz', homepage: 'sexy_grannies.to')
    @paper = Paper.create!(title: 'Sex in old age', venue: 'erotic shop around the corner', year: 2020, authors: [@author])
    visit edit_paper_path(@author)
  end

  it 'has an author selector' do
    assert_selector('select[multiple]')
  end
end