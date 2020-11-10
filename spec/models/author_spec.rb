require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'an authors has a first name, a last name and a homepage' do
    author = Author.new(first_name: "Max", last_name: "Mustermann", homepage: "google.de")
    expect(author.first_name).to eq "Max"
    expect(author.last_name).to eq "Mustermann"
    expect(author.homepage).to eq "google.de"
  end
end
