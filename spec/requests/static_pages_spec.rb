require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  describe "トップページ" do
    context "ページ全体" do
      before do
        visit root_path
      end

      it "cosonの文字列が存在することを確認" do
        expect(page).to have_content 'coson'
      end

      it "正しいタイトルが表示されることを確認" do
        expect(page).to have_title full_title
      end
    end
  end

  describe "ヘルプページ" do
    before do
      visit about_path
    end

    it "cosonとは？の文字列が存在することを確認" do
      expect(page).to have_content 'cosonとは？'
    end

    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('cosonとは？')
    end
  end

end