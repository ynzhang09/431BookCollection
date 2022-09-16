# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'author name', price: 10, published_date: 01-01-2000)
    
  end


  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name - title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a name - author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a name - price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a name - published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end