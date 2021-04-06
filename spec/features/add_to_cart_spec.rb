require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
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
    expect(page.find('#navbar')).to have_text('My Cart (0)')
    page.all('.product')[0].find_button('Add').click
    expect(page.find('#navbar')).to have_text('My Cart (1)')
    # save_screenshot
  end
end
