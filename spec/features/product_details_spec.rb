require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  # SETUP
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
    @product_name = @category.products[0][:name]
  end
  scenario "They can see product details" do
    # ACT
    visit root_path

    # ACT
    click_on @product_name

    # VERIFY
    expect(page).to have_css '.products-show'

    # VERIFY
    expect(page).to have_content @product_name

    # DEBUG
    save_screenshot
  end
end
