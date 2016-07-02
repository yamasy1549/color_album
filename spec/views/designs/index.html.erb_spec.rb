require 'rails_helper'

RSpec.describe "designs/index", type: :view do
  before(:each) do
    assign(:designs, [
      Design.create!(
        :title => "Title",
        :image => "Image"
      ),
      Design.create!(
        :title => "Title",
        :image => "Image"
      )
    ])
  end

  it "renders a list of designs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
