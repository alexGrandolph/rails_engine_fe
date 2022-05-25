require 'rails_helper'

RSpec.describe Merchant do

  it 'exists' do
    data = {
            "data": {
                      "id": "42",
                      "type": "merchant",
            "attributes": {
                      "name": "Glover Inc"
                          }
                    }
            }
    new_merchant = Merchant.new(data)
    expect(new_merchant).to be_a Merchant
  end 
end 