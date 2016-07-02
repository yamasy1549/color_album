require 'rails_helper'

RSpec.describe "designs/show", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :title => "Title",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Image/)
  end
end
