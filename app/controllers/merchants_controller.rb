class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    merch_id = params[:id]
    @items = MerchantItemsFacade.all_items(merch_id)
    @merchant = MerchantFacade.one_merchant(merch_id)
  end
  
  


end 