FactoryBot.define do
  factory :item, class: Item do
    item_name { Faker::Name.name }
    img { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png')) }
    item_link { Faker::Internet.url }
    association :user
    association :item_list
  end
end
