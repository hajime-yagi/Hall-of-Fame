require 'rails_helper'

RSpec.describe "Expects", type: :system do
  describe '予想画面遷移' do
    let(:user) { create(:user) }
    let!(:game) { create(:game) }
    let!(:expect) { create(:expect) }
    before do
      login(user)
     end
    context '正常系' do
      it '予想登録できる' do
    visit games_path
    click_on "予想する",match: :first
    expect(page).to have_content "予想登録ページ"
    expect(current_path).to eq new_game_expect_path
      end
    end
  end
end


  
