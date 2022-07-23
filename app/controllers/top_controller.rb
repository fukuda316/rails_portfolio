class TopController < ApplicationController
  def index
    @shops = Shop.all
  end
end
