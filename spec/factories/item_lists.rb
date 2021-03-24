FactoryBot.define do 

    factory :item_list do 
        list_name           {"good feeling!"}
        user_id             { 1 }
        image               {"hoge.png"}
        list_description    {"im good feeling"}
        list_item_type      {"Sord"}
    end
end