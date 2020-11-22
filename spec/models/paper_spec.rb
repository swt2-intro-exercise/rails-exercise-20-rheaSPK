require 'rails_helper'

RSpec.describe Paper, type: :model do
  paper_without_title = Paper.new(title: nil, venue: 'HPI', year: 2020)
  paper_without_venue = Paper.new(title: 'Nice to meet you', venue: nil, year: 2020)

  it 'has a Title' do
    expect(paper_without_title).to_not be_valid
  end

  it 'has a venue' do
    expect(paper_without_venue).to_not be_valid
  end
end
