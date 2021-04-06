require 'rails_helper'

RSpec.feature "Visitor navigates to a product details page from the home page", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'
  
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end
  scenario 'They see the products details' do
    visit root_path
    @product = Product.find(1)

    page.find_link('Details', href:'/products/1').click

    # save_screenshot
    expect(page).to have_text @product.name, count: 2
    expect(page).to have_text @product.description, count: 1
    expect(page).to have_text @product.quantity, count: 1
    expect(page).to have_text @product.price, count: 1
    expect(page).to have_text @product.category.name, count: 1
  end
end
