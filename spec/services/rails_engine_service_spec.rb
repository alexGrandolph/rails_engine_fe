require 'rails_helper'


RSpec.describe RailsEngineService do

  it 'returns merchant data JSON' do
    search = RailsEngineService.get_all_merchants
    expect(search).to be_a Hash
    # expect(search[:data])


  end


end 