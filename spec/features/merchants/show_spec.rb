require 'rails_helper'

RSpec.describe "Merchant Show Page" do
  
  describe "As a Visitor" do

    it 'Has a list of all the items that merchant sells' do
      visit "/merchants/99"

      expect(page).to have_content("Fahey-Stiedemann")
      expect(page).to have_content("Items:")
      expect(page).to have_content("Item Excepturi Rem")
      expect(page).to have_content("Item Illum Minus")
      expect(page).to have_content("Item Repellendus Cum")
      expect(page).to have_content("Item Omnis Adipisci")

    end   






  end 
end 