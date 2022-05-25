require 'rails_helper'


RSpec.describe RailsEngineService do

  it 'returns all merchants JSON data' do
    search = RailsEngineService.get_all_merchants
    expect(search).to be_an Array
    expect(search[0]).to have_key(:attributes)
    expect(search[0]).to have_key(:id)
    expect(search[0]).to have_key(:type)
    expect(search[0][:attributes]).to have_key(:name)
  end

  it 'returns one merchants JSON data' do
    search = RailsEngineService.get_one_merchant('42')
    expect(search).to be_a Hash
    expect(search).to have_key(:attributes)
    expect(search).to have_key(:id)
    expect(search).to have_key(:type)
    expect(search[:attributes]).to have_key(:name)


  end


end 