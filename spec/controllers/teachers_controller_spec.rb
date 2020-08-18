require 'rails_helper'

RSpec.describe TeachersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "indexの画面に遷移後、200レスポンスが返ってくること" do
      get :index
      expect(response).to have_http_status "200"
      # have_http_status "200"は、リクエストが成功したことを示す
    end
  end

  describe  "GET #search" do
    it '検索後の画面に遷移すること' do
      get :search
      expect(response).to have_http_status "200"
    end
    it "searchの画面に遷移後、200レスポンスが返ってくること" do
      get :search
      expect(response).to have_http_status "200"
      # have_http_status "200"は、リクエストが成功したことを示す
    end
    it "全てのキーワードを入力した際、searchの画面に遷移すること" do
      search = FactoryBot.build(:teacher)
      get :search
      expect(response).to render_template :search
    end
  end
end


  #   it "searchの画面に遷移後、200レスポンスが返ってくること" do
  #     search = FactoryBot.build(:teacher, :name_cont, :department_id_eq, :subject_id_eq, :day_id_eq, :limit_id_eq)
  #     get :search
  #     expect(response.code).to eq '200'
  #   end
  # end

