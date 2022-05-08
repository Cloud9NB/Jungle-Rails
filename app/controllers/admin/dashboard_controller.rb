class Admin::DashboardController < Admin::BaseController

  before_action :http_basic_authenticate

  def show
    @products = Product.count
    @categories = Category.count
  end
  
end
