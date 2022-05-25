class Merchant
  attr_reader :id, :name, :type

  def initialize(data)
    @id = data[:data][:id]
    @name = data[:data][:attributes][:name]
    @type = data[:data][:type]
  end


end