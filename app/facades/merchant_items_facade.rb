class MerchantItemsFacade

  def self.all_items(merchant_id)
    results = RailsEngineService.merchant_items(merchant_id)
    items = []
    results.each do |item|
      items << Item.new(item)
    end 
    items
  end 


end