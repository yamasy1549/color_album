require 'rails_helper'

RSpec.describe "designs/new", type: :view do
  before(:each) do
    assign(:design, Design.new(
      :title => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new design form" do
    render

    assert_select "form[action=?][method=?]", designs_path, "post" do

      assert_select "input#design_title[name=?]", "design[title]"

      assert_select "input#design_image[name=?]", "design[image]"
    end
  end
end
