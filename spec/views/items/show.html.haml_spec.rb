require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "Title",
      :region => "Region",
      :price => 1.5,
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Region/)
    rendered.should match(/1.5/)
    rendered.should match(/Desc/)
  end
end
