class Merchant
  attr_reader :id, :name, :type

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @type = data[:type]
  end


end