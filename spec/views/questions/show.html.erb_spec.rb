require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question => "MyText",
      :subject => "Subject",
      :topic => "Topic",
      :grade => "Grade",
      :type_of_question => "Type Of Question",
      :image => "Image",
      :school => "School",
      :owner => "Owner",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/Grade/)
    expect(rendered).to match(/Type Of Question/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(//)
  end
end
