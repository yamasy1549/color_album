require 'rails_helper'

RSpec.describe "designs/edit", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :title => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit design form" do
    render

    assert_select "form[action=?][method=?]", design_path(@design), "post" do

      assert_select "input#design_title[name=?]", "design[title]"

      assert_select "input#design_image[name=?]", "design[image]"
    end
  end
end
