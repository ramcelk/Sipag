require 'spec_helper'

describe "regions/index" do
  before(:each) do
    assign(:regions, [
      stub_model(Region,
        :name => "Name",
        :descripcion => "MyText"
      ),
      stub_model(Region,
        :name => "Name",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of regions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
