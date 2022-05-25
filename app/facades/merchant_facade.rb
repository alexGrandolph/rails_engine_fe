class MerchantFacade

  def self.all_merchants
    results = RailsEngineService.get_all_merchants
    merchants = []
    results.each do |merchant|
      merchants << Merchant.new(merchant)
    end
    merchants
  end 

  def self.one_merchant(merch_id)
    result = RailsEngineService.get_one_merchant(merch_id)
    merchant = Merchant.new(result)
  end
  



end 