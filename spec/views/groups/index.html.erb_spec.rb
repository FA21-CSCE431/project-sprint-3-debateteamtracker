require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        title: "Title",
        email: "Email"
      ),
      Group.create!(
        title: "Title",
        email: "Email"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
