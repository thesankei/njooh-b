require 'spec_helper'

describe "sellables/new" do
  before(:each) do
    assign(:sellable, stub_model(Sellable,
      :name => "MyString",
      :data => "",
      :place => nil
    ).as_new_record)
  end

  it "renders new sellable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sellables_path, "post" do
      assert_select "input#sellable_name[name=?]", "sellable[name]"
      assert_select "input#sellable_data[name=?]", "sellable[data]"
      assert_select "input#sellable_place[name=?]", "sellable[place]"
    end
  end
end
