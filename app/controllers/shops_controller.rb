class ShopsController < ApplicationController

  def index; end

  def show
    @product = Product.find_by id: params[:id]
  end


end
