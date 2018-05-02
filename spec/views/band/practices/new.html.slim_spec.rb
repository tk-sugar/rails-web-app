require 'rails_helper'

RSpec.describe "band/practices/new", type: :view do
  before(:each) do
    assign(:band_practice, Band::Practice.new())
  end

  it "renders new band_practice form" do
    render

    assert_select "form[action=?][method=?]", band_practices_path, "post" do
    end
  end
end
