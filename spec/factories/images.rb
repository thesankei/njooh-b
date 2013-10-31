# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    image_file_name "MyString"
    image_content_type "MyString"
    image_file_size 1
    caption "MyString"
    user_id 1
  end
end
