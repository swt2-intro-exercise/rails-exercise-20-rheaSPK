require 'rails_helper'

RSpec.describe Paper, type: :model do
  invalid_paper = Paper.new(title: nil, venue: 'HPI', year: 2020)

  it 'has a Title' do
    expect(invalid_paper).to_not be_valid
  end
end
