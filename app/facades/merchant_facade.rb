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
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{merch_id}")
    result = JSON.parse(response.body, symbolize_names: true)[:data]
    merchant = Merchant.new(result)
  end
  



end 