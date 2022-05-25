class RailsEngineService

  def self.get_all_merchants
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
  end

end