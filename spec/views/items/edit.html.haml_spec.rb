require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "MyString",
      :region => "MyString",
      :price => 1.5,
      :desc => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_title", :name => "item[title]"
      assert_select "input#item_region", :name => "item[region]"
      assert_select "input#item_price", :name => "item[price]"
      assert_select "input#item_desc", :name => "item[desc]"
    end
  end
end
