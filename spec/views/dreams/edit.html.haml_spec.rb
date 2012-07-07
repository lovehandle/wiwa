require 'spec_helper'

describe "dreams/edit" do
  before(:each) do
    @dream = assign(:dream, stub_model(Dream,
      :name => "MyString",
      :description => "MyText",
      :visible => false,
      :age => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit dream form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dreams_path(@dream), :method => "post" do
      assert_select "input#dream_name", :name => "dream[name]"
      assert_select "textarea#dream_description", :name => "dream[description]"
      assert_select "input#dream_visible", :name => "dream[visible]"
      assert_select "input#dream_age", :name => "dream[age]"
      assert_select "input#dream_location", :name => "dream[location]"
    end
  end
end
