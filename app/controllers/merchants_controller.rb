class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    merch_id = params[:id]
    #get merchant items
    # conn = Faraday.new(url: "http://localhost:3000")
    # response = conn.get("/api/v1/merchants/#{merch_id}/items")
    # results = JSON.parse(response.body, symbolize_names: true)[:data]
    # @items = []
    # results.each do |item|
    #   @items << Item.new(item)
    # end 
    # @items
    @items = MerchantItemsFacade.all_items(merch_id)
    @merchant = MerchantFacade.one_merchant(merch_id)
  end
  
  


end 