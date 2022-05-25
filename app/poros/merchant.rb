class Merchant

  def initialize(data)
    @id = data[:data][:id]
    @name = data[:data][:attributes][:name]

  end


end