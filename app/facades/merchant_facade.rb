class MerchantFacade

  def self.all_merchants
    results = RailsEngineService.get_all_merchants
    merchants = []
    results.each do |merchant|
      merchants << Merchant.new(merchant)
    end
    merchants
  end 



end 