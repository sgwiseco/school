require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question => "MyText",
      :subject => "MyString",
      :topic => "MyString",
      :grade => "MyString",
      :type_of_question => "MyString",
      :image => "MyString",
      :school => "MyString",
      :owner => "MyString",
      :user => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea#question_question[name=?]", "question[question]"

      assert_select "input#question_subject[name=?]", "question[subject]"

      assert_select "input#question_topic[name=?]", "question[topic]"

      assert_select "input#question_grade[name=?]", "question[grade]"

      assert_select "input#question_type_of_question[name=?]", "question[type_of_question]"

      assert_select "input#question_image[name=?]", "question[image]"

      assert_select "input#question_school[name=?]", "question[school]"

      assert_select "input#question_owner[name=?]", "question[owner]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
