require 'spec_helper'

describe "tours/index" do
  before(:each) do
    assign(:tours, [
      stub_model(Tour,
        :name => "Name"
      ),
      stub_model(Tour,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
