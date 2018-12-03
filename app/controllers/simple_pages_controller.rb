class SimplePagesController < ApplicationController
  layout 'landing'

  def landing_page
    @products = Product.limit(3)
  end
end
