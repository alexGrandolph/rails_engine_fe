require 'rails_helper'

RSpec.describe MerchantItemFacade do

  it 'returns a merchants item object' do
    items = MerchantItemFacade.all_items

    expect(items).to be_an Array
    expect(items).to be_all Item

  end


end 