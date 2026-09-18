class HomesController < ApplicationController
  def top
    @products = Product.all #追加
  end
end
