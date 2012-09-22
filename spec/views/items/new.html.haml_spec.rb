require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :title => "MyString",
      :region => "MyString",
      :price => 1.5,
      :desc => "MyString"
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_title", :name => "item[title]"
      assert_select "input#item_region", :name => "item[region]"
      assert_select "input#item_price", :name => "item[price]"
      assert_select "input#item_desc", :name => "item[desc]"
    end
  end
end
