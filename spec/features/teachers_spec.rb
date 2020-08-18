require 'rails_helper'

RSpec.feature "Teachers", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
  before do
    search = FactoryBot.build(:teacher)
  end
  it '検索語のページに移動する' do
    # トップページを開く
    visit root_path
    # ログインフォームにEmailとパスワードを入力する
    fill_in 'Nmae', with: '太郎'
    # ログインボタンをクリックする
    click_on 'ログイン'
    # ログインに成功したことを検証する
    expect(page).to have_content 'ログインしました'
  end






end
