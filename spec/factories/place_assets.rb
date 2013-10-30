# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place_asset do
    image_file_name "MyString"
    image_content_type "MyString"
    image_file_size 1
  end
end
