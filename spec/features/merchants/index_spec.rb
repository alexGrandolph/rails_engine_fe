require 'rails_helper'

RSpec.describe "Merchants Index Page" do
  
  describe "As a Visitor" do

    it 'Has a list of each merchants by name' do
      visit '/merchants'

      expect(page).to have_content('Merchants')
      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content('Willms and Sons')
      expect(page).to have_content('Bernhard, Stanton and Funk')
      expect(page).to have_content('Bechtelar LLC')
      expect(page).to have_content('Glover Inc')
    end 

  end 
end 