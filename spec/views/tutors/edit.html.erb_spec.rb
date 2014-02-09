require 'spec_helper'

describe "tutors/edit" do
  before(:each) do
    @tutor = assign(:tutor, stub_model(Tutor,
      :password => "MyString"
    ))
  end

  it "renders the edit tutor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutor_path(@tutor), "post" do
      assert_select "input#tutor_password[name=?]", "tutor[password]"
    end
  end
end
