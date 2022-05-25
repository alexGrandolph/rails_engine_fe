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
      within "#merchant_id-96" do
        expect(page).to have_link("Swaniawski-Cremin")
      end
      
      within "#merchant_id-97" do
        expect(page).to have_link("Rice, Jerde and White")
      end
      within "#merchant_id-60" do
        click_link "Smitham LLC"
      end
      save_and_open_page
      expect(current_path).to eq("/merchants/60")

    end 

  end 
end 