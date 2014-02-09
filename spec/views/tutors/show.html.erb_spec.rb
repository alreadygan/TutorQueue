require 'spec_helper'

describe "tutors/show" do
  before(:each) do
    @tutor = assign(:tutor, stub_model(Tutor,
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
  end
end
