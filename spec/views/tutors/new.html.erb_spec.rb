require 'spec_helper'

describe "tutors/new" do
  before(:each) do
    assign(:tutor, stub_model(Tutor,
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new tutor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutors_path, "post" do
      assert_select "input#tutor_password[name=?]", "tutor[password]"
    end
  end
end
