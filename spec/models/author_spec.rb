require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'an author was created'  do
    author = Author.new(first_name: "Max", last_name: "Mustermann", homepage: "google.de")

    it 'has a first name, a last name and a homepage' do
      expect(author.first_name).to eq "Max"
      expect(author.last_name).to eq "Mustermann"
      expect(author.homepage).to eq "google.de"
    end

    it 'has a full name' do
      expect(author.name).to eq "Max Mustermann"
    end
  end
end
