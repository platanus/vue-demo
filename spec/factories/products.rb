FactoryBot.define do
  factory :product do
    image_data { "MyText" }
    price { 1 }
    name { "MyString" }
    details { "MyText" }
    brand { "MyString" }
  end
end
