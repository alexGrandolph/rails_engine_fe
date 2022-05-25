require 'rails_helper'

RSpec.describe MerchantFacade do

  it 'Returns merchant objects' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_an Array
    expect(merchants).to be_all Merchant
  end

  it 'Returns one merchant object' do
    merchant = MerchantFacade.one_merchant('8')

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq('Osinski, Pollich and Koelpin')
    expect(merchant.id).to eq('8')
  end





end 