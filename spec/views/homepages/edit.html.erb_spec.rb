require 'rails_helper'

RSpec.describe "homepages/edit", type: :view do
  before(:each) do
    @homepage = assign(:homepage, Homepage.create!(
      about: "MyString",
      aboutcontentone: "MyString",
      aboutcontenttwo: "MyString",
      emailone: "MyString",
      emailtwo: "MyString",
      emailthree: "MyString",
      emailfour: "MyString",
      emailfive: "MyString",
      contact: "MyString",
      contactcontent: "MyString",
      imageone: "MyString",
      imagetwo: "MyString",
      imagethree: "MyString"
    ))
  end

  it "renders the edit homepage form" do
    render

    assert_select "form[action=?][method=?]", homepage_path(@homepage), "post" do

      assert_select "input[name=?]", "homepage[about]"

      assert_select "input[name=?]", "homepage[aboutcontentone]"

      assert_select "input[name=?]", "homepage[aboutcontenttwo]"

      assert_select "input[name=?]", "homepage[emailone]"

      assert_select "input[name=?]", "homepage[emailtwo]"

      assert_select "input[name=?]", "homepage[emailthree]"

      assert_select "input[name=?]", "homepage[emailfour]"

      assert_select "input[name=?]", "homepage[emailfive]"

      assert_select "input[name=?]", "homepage[contact]"

      assert_select "input[name=?]", "homepage[contactcontent]"

      assert_select "input[name=?]", "homepage[imageone]"

      assert_select "input[name=?]", "homepage[imagetwo]"

      assert_select "input[name=?]", "homepage[imagethree]"
    end
  end
end
