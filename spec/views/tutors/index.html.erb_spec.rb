require 'spec_helper'

describe "tutors/index" do
  before(:each) do
    assign(:tutors, [
      stub_model(Tutor,
        :password => "Password"
      ),
      stub_model(Tutor,
        :password => "Password"
      )
    ])
  end

  it "renders a list of tutors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
