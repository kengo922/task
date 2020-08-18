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

  it '何も入力しなくてもページに移動するが、登録されてる情報は何も表示されない' do
    # トップページを開く
    visit root_path
    # 検索ボタンをクリックする
    click_on '検索'
    # 文字が表示された事を検証をする
    expect(page).to have_content ''
  end

  it '教員名を入力すると検索語のページに移動し、教員名が表示されること' do
    # トップページを開く
    visit root_path
    # 教員名のフォームにnameを入力する
    fill_in "q[name_cont]", with: '太郎'
    # 検索ボタンをクリックする
    click_on '検索'
    # 文字が表示された事を検証をする
    expect(page).to have_content '太郎'
  end

  it '教員名を入力すると検索語のページに移動し、教員名が表示されること' do
    # トップページを開く
    visit root_path
    # 教員名のフォームにnameを入力する
    fill_in "q[department_id_eq]", with: '数学部'
    # 検索ボタンをクリックする
    click_on '検索'
    # 文字が表示された事を検証をする
    expect(page).to have_content '数学部'
  end
end
