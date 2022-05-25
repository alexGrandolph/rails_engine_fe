class MerchantsController < ApplicationController

  def index
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
    @merchants = []
    results.each do |merchant|
      # binding.pry
      @merchants << merchant
    end
    @merchants
  end
  


end 