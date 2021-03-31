require 'rails_helper'

feature 'item_list', type: :feature do
# このブロックの内部にscenarioを記述していく
    let(:user) { create(:user) }

    scenario 'post item_list' do
        # ログイン前には投稿ボタンがない
        visit root_path
        expect(page).to have_no_content('review item')

        # ログイン処理
        visit login_path
        fill_in 'email', with: user.email
        fill_in 'password', with: user.password
        find('input[name="commit"]').click
        expect(current_path).to eq root_path
        expect(page).to have_content('review item')

        # ツイートの投稿 
        expect {
            click_link('review item')
            expect(current_path).to eq new_item_list_path
            # fill_in 'image', with: 'https://s.eximg.jp/expub/feed/Papimami/2016/Papimami_83279/Papimami_83279_1.png'
            fill_in 'Situation', with: 'フューチャースペックのテスト'
            fill_in 'How to use', with: 'フューチャースペックのテスト'
            choose "Sord(攻めのアイテム)" 
            find('input[type="submit"]').click
        }.to change(ItemList, :count).by(1)
    end 
end