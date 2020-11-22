require 'rails_helper'

describe 'New papers page', type: :feature do
  before 'render page' do
    visit new_paper_path
  end

  it 'has an author selector' do
    assert_selector('select[multiple]')
  end
end