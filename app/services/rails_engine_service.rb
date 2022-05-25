class RailsEngineService

  def self.get_all_merchants
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_one_merchant(id)
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{id}")
    result = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.merchant_items(merchant_id)
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
  end 

end