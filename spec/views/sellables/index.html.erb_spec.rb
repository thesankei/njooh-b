require 'spec_helper'

describe "sellables/index" do
  before(:each) do
    assign(:sellables, [
      stub_model(Sellable,
        :name => "Name",
        :data => "",
        :place => nil
      ),
      stub_model(Sellable,
        :name => "Name",
        :data => "",
        :place => nil
      )
    ])
  end

  it "renders a list of sellables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
