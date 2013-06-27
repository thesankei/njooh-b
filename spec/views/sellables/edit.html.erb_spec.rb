require 'spec_helper'

describe "sellables/edit" do
  before(:each) do
    @sellable = assign(:sellable, stub_model(Sellable,
      :name => "MyString",
      :data => "",
      :place => nil
    ))
  end

  it "renders the edit sellable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sellable_path(@sellable), "post" do
      assert_select "input#sellable_name[name=?]", "sellable[name]"
      assert_select "input#sellable_data[name=?]", "sellable[data]"
      assert_select "input#sellable_place[name=?]", "sellable[place]"
    end
  end
end
