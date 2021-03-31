require 'rails_helper' 

describe ItemListsController, type: :controller do
    let(:user) { create(:user) }

    describe '#new' do
        it "renders the :new template" do
            get :new
            expect(response).to render_template :new
        end 
    end 
    
    describe '#create' do
    
        context 'log in' do

            # before do
            #     user = create(:user)
            #     post '/login', { :name => user.name, :password => user.password }
            # end

            # context 'can save' do
            #     # subject {
            #     # post :create,
            #     # }

            # it 'count up playlist' do
            
            # end
            
            # end
            # context 'can not save' do
            # end
        end

        context 'not log in' do
            before do
                get :index
            end
        end
    end

    describe '#edit' do
        it "assigns the requested item_list to @item_list" do
            item_list = create(:item_list) 
            get :edit, params: { id: item_list }
            expect(assigns(:item_list)).to eq item_list
        end

        it "renders the :edit template" do
            item_list = create(:item_list) 
            get :edit, params: { id: item_list } 
            expect(response).to render_template :edit
        end
    end 
end