require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        :section_name => "Section Name"
      ),
      Section.create!(
        :section_name => "Section Name"
      )
    ])
  end

  it "renders a list of sections" do
    render
    assert_select "tr>td", :text => "Section Name".to_s, :count => 2
  end
end
