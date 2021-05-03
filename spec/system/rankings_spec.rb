require 'rails_helper'

RSpec.describe 'Rankings', type: :system do
  describe '画面遷移' do
    let!(:user) { create(:user) }
    before do
      login(user)
    end
    context '正常系' do
      it 'ランキングからチーム内ランクに飛ぶ' do
      visit rank_path
      expect(page).to have_content "球団内順位"
      expect(page).to have_content "球団ポイント表"
      click_on '球団内順位'
      expect(current_path).to eq fan_rank_path
      end
      it 'チーム内ランクから球団別ポイントに飛ぶ' do
        visit team_rank_path
        expect(page).to have_content "個人ランキング"
        expect(page).to have_content "球団別ポイント表"
        click_on '球団別ポイント表'
        expect(current_path).to eq fan_rank_path
    end
  end
end
