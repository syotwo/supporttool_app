require 'rails_helper' 

describe ItemList do
    describe '#create' do

        context 'can save' do
            it "is valid list_name" do 
                expect(build(:item_list)).to be_valid
            end

            it "is valid list_item_type" do 
                expect(build(:item_list)).to be_valid
            end

            it 'is valid with image' do
                expect(build(:item_list, image:  nil)).to be_valid
            end

            it 'is valid with name and image' do
                expect(build(:item_list)).to be_valid
            end
        end

        context 'can not save' do
            it 'is invalid without list_name' do
                item_list = build(:item_list, list_name: nil)
                item_list.valid?
                expect(item_list.errors[:list_name]).to include("can't be blank")
            end

            it 'is invalid without list_name and image' do
                item_list = build(:item_list, list_name: nil, image: nil)
                item_list.valid?
                expect(item_list.errors[:list_name]).to include("can't be blank")
            end

            it 'is invaid without user_id' do
              item_list = build(:item_list, user_id: nil)
              item_list.valid?
              expect(item_list.errors[:user]).to include("must exist")
            end
        end
    end
end