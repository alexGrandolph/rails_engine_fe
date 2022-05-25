require 'rails_helper'

RSpec.describe MerchantItemsFacade do

  it 'returns a merchants item object' do
    items = MerchantItemsFacade.all_items(99)

    expect(items).to be_an Array
    expect(items).to be_all Item

  end


end 