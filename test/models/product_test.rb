require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "destroying a product destroys its order details" do
    product = Product.create!(name: "Delete me", price: 100)
    order = Order.create!(user: users(:one), address: "Tokyo")
    order_detail = OrderDetail.create!(product: product, order: order, quantity: 1, price: 100)

    assert_difference("OrderDetail.count", -1) do
      product.destroy!
    end

    assert_not OrderDetail.exists?(order_detail.id)
  end
end
