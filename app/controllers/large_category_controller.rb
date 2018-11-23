class LargeCategoryController < ApplicationController
  before_action :set_item ,only:[:show]
  def show
    @medium_category_items = MediumCategory.select("medium_category")
    @items = Item.where(large_category_id: @item.large_category_id).where.not(status: :stopped)
  end

  def index
    @medium_category_items = MediumCategory.select("medium_category")
    @items = Item.where(large_category_id: params[:large_category_id]).where.not(status: :stopped)
  end

end
