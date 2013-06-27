require 'spec_helper'

describe "sellables/show" do
  before(:each) do
    @sellable = assign(:sellable, stub_model(Sellable,
      :name => "Name",
      :data => "",
      :place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
