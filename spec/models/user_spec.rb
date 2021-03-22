require 'rails_helper' 
describe User do
    describe '#create' do
        it "is invalid without a name" do 
            user = User.new(name: "", email: "kkk@gmail.com", password: "kkk") 
            user.valid?
            expect(user.errors[:name]).to include("can't be blank")
        end
    end 
end