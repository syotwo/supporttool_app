require 'rails_helper' 

describe ItemsController, type: :controller do
    let(:item_list) { create(:item_list) }
    let(:user) { create(:user) }


    describe '#new' do
        it "renders the :new template" do
            get :new
            expect(response).to render_template :new
        end 
        
    end 

    describe '#create' do

        let(:params) { { item_list_id: item_list.id, user_id: user.id, item: attributes_for(:item) } } 
        
        context 'log in' do
        end

        context 'not log in' do
            before do
                get :index
            end
        end
    end

    describe '#edit' do
        it "assigns the requested item to @item" do
            item = create(:item) 
            get :edit, params: { id: item }
            expect(assigns(:item)).to eq item
        end

        it "renders the :edit template" do
            item = create(:item) 
            get :edit, params: { id: item } 
            expect(response).to render_template :edit
        end
    end
end
