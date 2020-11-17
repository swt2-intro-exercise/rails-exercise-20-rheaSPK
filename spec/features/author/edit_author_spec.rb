require 'spec_helper'

describe 'Edit page for an author' do
  before 'create a dummy author' do
    @alan = FactoryBot.create(:author)
  end
  it 'renders the edit page' do
    visit edit_author_path(@alan)
  end

end