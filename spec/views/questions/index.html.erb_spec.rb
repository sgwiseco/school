require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :question => "MyText",
        :subject => "Subject",
        :topic => "Topic",
        :grade => "Grade",
        :type_of_question => "Type Of Question",
        :image => "Image",
        :school => "School",
        :owner => "Owner",
        :user => nil
      ),
      Question.create!(
        :question => "MyText",
        :subject => "Subject",
        :topic => "Topic",
        :grade => "Grade",
        :type_of_question => "Type Of Question",
        :image => "Image",
        :school => "School",
        :owner => "Owner",
        :user => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Type Of Question".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
