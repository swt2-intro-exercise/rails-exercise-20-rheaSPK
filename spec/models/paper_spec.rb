require 'rails_helper'

RSpec.describe Paper, type: :model do
  paper_without_title = Paper.new(title: nil, venue: 'HPI', year: 2020)
  paper_without_venue = Paper.new(title: 'Nice to meet you', venue: nil, year: 2020)
  paper_without_year = Paper.new(title: 'Nice to meet you', venue: 'HPI', year: nil)

  it 'has a Title' do
    expect(paper_without_title).to_not be_valid
  end

  it 'has a venue' do
    expect(paper_without_venue).to_not be_valid
  end

  it 'has a year' do
    expect(paper_without_year).to_not be_valid
  end
end
