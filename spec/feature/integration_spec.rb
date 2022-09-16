# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs - title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'valid inputs - author' do
    visit new_book_path
    fill_in 'Author', with: 'author name'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('author name')
  end
  scenario 'valid inputs - price' do
    visit new_book_path
    fill_in 'Price', with: 10
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10)
  end
  scenario 'valid inputs - published date' do
    visit new_book_path
    fill_in 'Published Date', with: 01-01-2000
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(01-01-2000)
  end
end