require 'spec_helper'

describe "dreams/index" do
  before(:each) do
    assign(:dreams, [
      stub_model(Dream,
        :name => "Name",
        :description => "MyText",
        :visible => false,
        :age => 1,
        :location => "Location"
      ),
      stub_model(Dream,
        :name => "Name",
        :description => "MyText",
        :visible => false,
        :age => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of dreams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
