require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    context 'new product' do
      it 'saves successfully' do
        @category = Category.create(name: "Test")
        Product.create(name: "Simple Rick", price_cents: 25000, quantity: 5000, category_id: @category.id)
        expect(Product.where(name: "Simple Rick")).to exist
      end
    end
    context ':name' do
      it 'presence is true' do
        @category = Category.create(name: "Test")
        @product = Product.create(name: nil, price_cents: 25000, quantity: 5000, category_id: @category.id)
        expect(@product.errors.full_messages).to include("Name can't be blank")
      end
    end
    context ':price' do
      it 'presence is true' do
        @category = Category.create(name: "Test")
        @product = Product.create(name: "Simple Rick", price_cents: nil, quantity: 5000, category_id: @category.id)
        expect(@product.errors.full_messages).to include("Price can't be blank")
      end
    end
    context ':quantity' do
      it 'presence is true' do
        @category = Category.create(name: "Test")
        @product = Product.create(name: "Simple Rick", price_cents: 25000, quantity: nil, category_id: @category.id)
        expect(@product.errors.full_messages).to include("Quantity can't be blank")
      end
    end
    context ':category' do
      it 'presence is true' do
        @category = Category.create(name: "Test")
        @product = Product.create(name: "Simple Rick", price_cents: 25000, quantity: 5000, category_id: nil)
        expect(@product.errors.full_messages).to include("Category can't be blank")
      end
    end
  end
end
