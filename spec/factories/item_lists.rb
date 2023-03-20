FactoryBot.define do
  factory :item_list, class: ItemList do
    list_name { 'good feeling!' }
    association :user, factory: :user # アソシエーション
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png')) }
    list_description    { 'im good feeling' }
    list_item_type      { 'Sord' }
  end
end
