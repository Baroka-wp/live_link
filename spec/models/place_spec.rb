require 'rails_helper'

RSpec.describe Live, type: :model do
  let(:band) {create(:devise_band)}
  let(:live) {create(:live, band: create(:devise_band))}
  let(:place) {create(:place, live: create(:live, band: create(:devise_band)))}
  let(:act) {create(:act, live: create(:live, band: create(:devise_band)))}

  describe 'バリデーションチェック' do

    it 'Placeが空だと失敗すること' do
      place.name = ''
      place.valid?
      expect(place.errors[:name]).to include('を入力してください')
    end

    it '全て正しく登録されてれば成功すること' do
      expect(live).to be_valid
    end

  end
end