require 'spec_helper'

describe "coins/edit" do
  before(:each) do
    @coin = assign(:coin, stub_model(Coin,
      :moneda => "MyString",
      :pais => "MyString",
      :simbolo => "MyString",
      :valorLocal => 1.5
    ))
  end

  it "renders the edit coin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coins_path(@coin), :method => "post" do
      assert_select "input#coin_moneda", :name => "coin[moneda]"
      assert_select "input#coin_pais", :name => "coin[pais]"
      assert_select "input#coin_simbolo", :name => "coin[simbolo]"
      assert_select "input#coin_valorLocal", :name => "coin[valorLocal]"
    end
  end
end
