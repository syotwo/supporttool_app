require 'rails_helper'

describe ToppagesController, type: :controller do
  describe '#index' do
    it 'populates an array of item_lists ordered by created_at DESC' do
      @user = create(:user)
      item_lists = create_list(:item_list, 3, user_id: @user.id)
      get :index
      expect(assigns(:item_lists)).to match(item_lists)
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end
end
