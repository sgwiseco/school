FactoryGirl.define do
  factory :question do
    question "MyText"
    subject "MyString"
    topic "MyString"
    grade "MyString"
    type_of_question "MyString"
    image "MyString"
    school "MyString"
    owner "MyString"
    user nil
  end
end
