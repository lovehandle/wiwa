require 'spec_helper'

describe "dreams/show" do
  before(:each) do
    @dream = assign(:dream, stub_model(Dream,
      :name => "Name",
      :description => "MyText",
      :visible => false,
      :age => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/Location/)
  end
end
