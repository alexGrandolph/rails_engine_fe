class MerchantItemsFacade

  def self.all_items(merchant_id)
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
    items = []
    results.each do |item|
      items << Item.new(item)
    end 
    items

  end 


end