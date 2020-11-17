require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'an author was created'  do
    author = Author.new(first_name: "Max", last_name: "Mustermann", homepage: "google.de")
    invalid_author = Author.new(first_name:"Felix",last_name:nil, homepage: "to.cool.for.a.last.name.org")


    it 'has a first name, a last name and a homepage' do
      expect(author.first_name).to eq "Max"
      expect(author.last_name).to eq "Mustermann"
      expect(author.homepage).to eq "google.de"
    end

    it 'has a full name' do
      expect(author.name).to eq "Max Mustermann"
    end

    it 'has a last name' do
      expect(invalid_author).to_not be_valid
    end
  end
end
