# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'フラッシュメッセージ' do
    let(:user) { create(:user) }
    context '正常系' do
      it '新規登録するとフラッシュが出る' do
        visit new_user_path
        fill_in 'name', with: user.name
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
        fill_in 'Password_confirmation', with: user.password_confirmation
        click_button '登録'
        expect(current_page).to eq login_path
        expect(page).to have_content 'ユーザーを作成しました'
      end
      it 'ログインするとフラッシュが出る' do
        visit login_path
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
        click_button 'ログイン'
        expect(current_page).to eq profile_path
        expect(page).to have_content 'ユーザーを作成しました'
      end
      context 'エラー' do
        it '新規登録で不備があるとフラッシュが出る' do
          visit new_user_path
          fill_in 'name', with: user.name
          fill_in 'Password', with: user.password
          fill_in 'Password_confirmation', with: user.password_confirmation
          click_button '登録'
          expect(current_page).to eq new_user_path
          expect(current_page).to have_content 'ユーザーを作成できませんでした'
        end
        it 'ログインページで不備があるとフラッシュが出る' do
          visit login_path
          fill_in 'Password', with: user.password
          click_button '登録'
          expect(current_page).to eq login_path
          expect(page).to have_content 'ユーザーを作成できませんでした'
        end
      end
    end
  end
end
