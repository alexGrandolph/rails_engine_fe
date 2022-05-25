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

    it 'Each merchants name is a link to their show page' do
      visit '/merchants'

      within "#merchant_name-Fahey-Stiedemann" do
        expect(page).to have_link("Fahey-Stiedemann")
      end

      within "#merchant_name-Bernhard, Stanton and Funk" do
        expect(page).to have_link("Bernhard, Stanton and Funk")
      end
      within "#merchant_name-Glover Inc" do
        click_link "Glover Inc"
      end
      expect(current_path).to eq("/merchants/42")

    end 

  end 
end 