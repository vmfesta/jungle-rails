require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      @category = Category.new(name: 'Phone')
      expect(Product.new(
          name: 'Iphone',
          price: 1000,
          quantity: 20,
          category: @category
      )).to be_valid
    end
    it "is not valid without a name" do
      product = Product.new(
          price: 1000,
          quantity: 20,
          category: @category
      )
      expect(product).to_not be_valid
    end
    it "is not valid without a price" do
      product = Product.new(
          name: 'Iphone',
          quantity: 20,
          category: @category
      )
      expect(product).to_not be_valid
    end
    it "is not valid without a quantity" do
      product = Product.new(
          name: 'Iphone',
          price: 1000,
          category: @category
      )
      expect(product).to_not be_valid
    end
    it "is not valid without a category" do
      product = Product.new(
          name: 'Iphone',
          price: 1000
      )
      expect(product).to_not be_valid
    end
  end
end
