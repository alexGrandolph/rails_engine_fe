require 'rails_helper'

RSpec.describe MerchantFacade do

  it 'Returns merchant object' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_an Array
    expect(merchants).to be_all Merchant


  end



end 