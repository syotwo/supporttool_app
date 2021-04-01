require 'rails_helper' 

describe Item , type: :model do
    describe '#create' do
        context 'can save' do

            it "is valid item_name" do 
                expect(build(:item)).to be_valid
            end

            it 'is valid with img' do
                expect(build(:item)).to be_valid
            end

            it 'is valid with item_link' do
                expect(build(:item)).to be_valid
            end
        end
        context 'can not save' do
            it 'is invalid without item_name ' do
                item = build(:item, item_name: nil)
                item.valid?
                expect(item.errors[:item_name]).to include("can't be blank")
            end

            it 'is invalid without item_name and img' do
                item = build(:item, item_name: nil, img: nil)
                item.valid?
                expect(item.errors[:item_name]).to include("can't be blank")
            end
        end
    end
end
