require 'rails_helper'

RSpec.describe Merchant do

  it 'exists' do
    data =  {
              "id": "42",
              "type": "merchant",
              "attributes": {
                              "name": "Glover Inc"
                            }
            }

    new_merchant = Merchant.new(data)
    expect(new_merchant).to be_a Merchant
  end 

  it 'has readable attributes' do
    data =  {
              "id": "42",
              "type": "merchant",
              "attributes": {
                              "name": "Glover Inc"
                            }
            }
    new_merchant = Merchant.new(data)
    expect(new_merchant.id).to eq("42")
    expect(new_merchant.name).to eq("Glover Inc")


  end
end 