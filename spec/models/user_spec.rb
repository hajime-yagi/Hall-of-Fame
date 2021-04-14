# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe 'バリデーション確認' do
    it 'Eメールが未入力の場合、ユーザー作成できないこと' do
      user = User.new(email: nil)
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include('を入力してください')
    end
    it '名前が未入力の場合、ユーザー作成できないこと' do
      user = User.new(name: nil)
      expect(user).to_not be_valid
      expect(user.errors[:name]).to include('を入力してください')
    end
    it 'パスワードが未入力の場合、ユーザー作成できないこと' do
      user = User.new(password: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include('を入力してください')
    end
    it 'パスワードが未入力の場合、ユーザー作成できないこと' do
      user = User.new(password_confirmation: nil)
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include('を入力してください')
    end
    it '正しく入力した場合、ユーザー作成できること' do
      expect(user).to be_valid
    end
  end
end
