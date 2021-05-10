# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Expects', type: :system do
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
        click_on '予想する', match: :first
        click_on '予想'
        expect(page).to have_content 'マイページ'
        expect(current_path).to eq profile_path
      end
    end
    context 'エラー' do
      it '予想登録できない' do
        visit games_path
        click_on '予想する', match: :first
        click_on '予想'
        visit games_path
        click_on '予想する', match: :first
        expect(page).to have_content '予想一覧'
        expect(page).to have_content '予想済みです'
        expect(current_path).to eq games_path
      end
    end
  end
end
