class MerchantsController < ApplicationController

  def index
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
    @merchants = []
    results.each do |merchant|
      @merchants << merchant
    end
    @merchants
  end

  def show
    merch_id = params[:id]
    #get merchant items
    conn = Faraday.new(url: "http://localhost:3000")
    response = conn.get("/api/v1/merchants/#{merch_id}/items")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
    @items = []
    results.each do |item|
      @items << item
    end 
    @items
    #get merchant
    conn2 = Faraday.new(url: "http://localhost:3000")
    response2 = conn2.get("/api/v1/merchants/#{merch_id}")
    @merchant = JSON.parse(response2.body, symbolize_names: true)[:data]

  end
  
  


end 